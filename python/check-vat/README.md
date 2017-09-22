Simple Script to Validate EU VAT Numbers
========================================

This script allows to check whether EU Vat Number supplied on its command-line is valie or not.

It uses SOAP based webservice provided by the European Comission, see [http://ec.europa.eu/taxation_customs/vies/](http://ec.europa.eu/taxation_customs/vies/) .

Script is written in Python with Zeep client and thus  requeires installed pyton >2.7 with zeep. You can uses `pip` to install `zeep`:

    # pip install zeep
    
You of query for particular VAT-Number:

	$ ./vat.py PL9492191021
	Valid