#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Playing with global word in python

xyz = 'Everything Works'

class ABC:
    def method(self):
        # Local xyz will be created and used.
        xyz = "I am local"
        print xyz


def method():
    # We use xyz before assigning to it, so global xyz will be used...
    print xyz


def local_var():
    # We are assigning to local variable here...
    xyz = u'Tá gach rúd ag obair.'

def global_var():
    global xyz
    xyz = u'Tá gach rúd ag obair.'


if __name__ == '__main__':
    a = ABC()
    a.method()

    local_var()
    method()
    global_var()
    method()
