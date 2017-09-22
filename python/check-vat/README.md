Simple Script to Validate EU VAT Numbers
========================================

This script allows to check whether EU Vat Number supplied on its command-line is valid or not.

It uses SOAP based webservice provided by the European Comission, see [http://ec.europa.eu/taxation_customs/vies/](http://ec.europa.eu/taxation_customs/vies/).

Script is written in Python 2.7 with Zeep client. You can use `pip` to install `zeep`:

    # pip install zeep
    
Example of query for particular VAT-Number:

	$ ./vat.py PL9492191021
	Valid
