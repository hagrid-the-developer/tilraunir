#!/usr/bin/env python

import sys
import zeep
from zeep import Client


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

if len(sys.argv) != 2:
    help()

if sys.argv[1] == '-h' or sys.argv[1] == '--help':
    help

try:
    if check_vat(sys.argv[1]):
        print 'Valid'
    else:
        print 'Invalid'
except zeep.exceptions.Fault as e:
    print 'Cannot parse VAT-Number: %s' % e
except:
    print 'Cannot determine whether VAT-number is valid: %s' % sys.exc_info()[1]
