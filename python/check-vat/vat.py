#!/usr/bin/env python

import sys
import zeep
from zeep import Client

import json


def help():
    print 'Usage:'
    print 'vat.py <VAT-Number>'
    print
    sys.exit(1)


def check_vat(vat_id):
    client = Client('http://ec.europa.eu/taxation_customs/vies/checkVatService.wsdl')
    prefix = vat_id[:2]
    number = vat_id[2:]
    ret = client.service.checkVat(prefix, number)
    return ret['valid']

def parse_json(s):
    decoder = json.JSONDecoder()
    d = decoder.decode(s)
    if 'vat-id' in d:
        return d['vat-id']
    else:
        raise ValueError('vat-id item is missing')


if sys.argv[1] == '-h' or sys.argv[1] == '--help':
    help()

try:
    if sys.argv[1] == '--json':
        valid = check_vat(parse_json(sys.argv[2]))
    elif len(sys.argv) == 2:
        valid = check_vat(sys.argv[1])
    else:
        help()
    
    if valid:
        print 'Valid'
    else:
        print 'Invalid'

except zeep.exceptions.Fault as e:
    print 'Cannot parse VAT-Number: %s' % e
except ValueError as e:
    print 'Cannot parse json: %s' %e
except:
    print 'Cannot determine whether VAT-number is valid: %s' % sys.exc_info()[1]

