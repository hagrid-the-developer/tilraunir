from oxygendemo.items import OxygendemoItem
from pyquery import PyQuery as pq
from scrapy.utils.url import urljoin_rfc
from scrapy.spider import BaseSpider
from scrapy.http import FormRequest
from scrapy.http import Request

# * Link http://www.oxygenboutique.com/Le-Apron-Dress-in-Reese.aspx from https://gist.github.com/MihaZelnik/9a135498b102fd346ba3
#   isn't working. So I tried to guess the correct values from other items from the side.
# * It seems that there is no item with discount, so it is always set to None. (I cannot guess how to parse it).
# * I am parsing only usd_price at this time but adding GBP and EUR should be quite easy:
#   It would involve creating of three separated sessions and parsing pages with list of items (not pages with single items)
#   in every session. List of items would be passed between requests to the same urls in different sessions.

class OxygendemoSpide(BaseSpider):
    name = 'oxygenboutique.com'
    domain_name = 'oxygenboutique.com'

    currency_codes = {
        'usd':'503329C6-40CB-47E6-91D1-9F11AF63F706',
        'eur':'b2dd6e5d-5336-4195-b966-2c81d2b34897',
        'gbp':'b2dd6e5d-5336-4195-b966-2c81d2b34899'
    }

    colors = (
        'red',
        'blue',
        'black',
        'yellow',
        'pink',
        'grey',
        'green',
        'arctic',
        'turquoise',
        'gold',
        'silver'
    )

    sizes_table = {
        '6': 'XXS',
        '8': 'XS',
        '10': 'S',
        '12': 'M',
        '14': 'L',
        '16': 'XL',
        '18': 'XXL',
        '20': 'XXL'
    }

    start_urls = [ 'http://www.oxygenboutique.com/Currency.aspx' ]
    first_urls = [
        # apparel
        {
            'type':'A',
            'urls':[ 'http://www.oxygenboutique.com/dresses.aspx?ViewAll=1' ]
        },
        # shoes
        {
            'type':'S',
            'urls':[ 'http://www.oxygenboutique.com/Shoes-All.aspx' ]
        },
        # bags
        {
            'type':'B',
            'urls':[]
        },
        # jewelry
        {
            'type':'J',
            'urls':[
                'http://www.oxygenboutique.com/bracelet.aspx',
                'http://www.oxygenboutique.com/earrings.aspx',
                'http://www.oxygenboutique.com/necklace.aspx',
                'http://www.oxygenboutique.com/Crystal-Tattoos.aspx'
            ]
        },
        # accesories
        {
            'type':'R',
            'urls':[
                'http://www.oxygenboutique.com/HOMEWEAR.aspx',
                'http://www.oxygenboutique.com/hats.aspx',
                'http://www.oxygenboutique.com/iphone-cases.aspx'
            ]
        }
    ]

    def guess_color(self, description):
        des = description.lower()
        colors = [ col for col in self.colors if col in des ]
        return len(colors) > 0 and colors or None

    def parse_stock_status(self, item_type, elem):
        statuses = {}
        for opt in pq(elem)('option:gt(0)'):
            d = pq(opt)
            size = d.text().lower() == 'one size' and 'one-size' or d.text().split()[0]
            status = d.attr('value') != '0' and 3 or 1
            # Conversion of sizes is tricky (there are many systems for sizes),
            #   so lets convert only some sizes (UK dress sizes) and left other sizes their original value.
            if item_type == 'A':
                size = self.sizes_table.get(size, size)
            statuses[size] = status
        return statuses

    def parse(self, response):
        d = pq(response.body)

        yield FormRequest.from_response(
            response,
            dont_filter=True,
            formdata={
                  '__EVENTTARGET':'lnkCurrency'
                , '__EVENTARGUMENT':''
                , 'ddlCountry':'United Kingdom'
                , 'ddlCurrency':self.currency_codes['usd']
            },
            callback=self.yield_first_urls)

    def yield_first_urls(self, response):
        for desc in self.first_urls:
            item_type = desc['type']
            urls = desc['urls']
            for url in urls:
                yield Request(url=url, meta={'type': item_type}, callback=self.parse_page)

    def parse_page(self, response):
        item_type = response.request.meta['type']
        d = pq(response.body)
        page_items = d('.itm .itm')
        for page_item in page_items:
            d = pq(page_item)
            item = OxygendemoItem()
            item['designer'] = d('.brand_name').text().strip()
            item['link'] = urljoin_rfc(response.url, d('a:first').attr('href'))
            item['usd_price'] = d('span.price span').text().strip()
            item['type'] = item_type
            item['name'] = d('h3').text().strip()
            item['gender'] = 'F' # I was able to find only female items
            item['code'] = item['link'].split('/')[-1].split('.')[0].lower()
            yield Request(url=item['link'], meta={'item': item}, callback=self.parse_item)

    def parse_item(self, response):
        d = pq(response.body)
        item = response.request.meta['item']
        item['description'] = d('meta[name="description"]').attr('content').strip()
        item['images'] = [ urljoin_rfc(response.url, pq(x).attr('href')) for x in d('a.cloud-zoom-gallery') ]
        item['raw_color'] = self.guess_color(item['description'])
        item['sale_discount'] = None
        item['stock_status'] = self.parse_stock_status(item['type'], d('#ctl00_ContentPlaceHolder1_ddlSize'))
        return item
