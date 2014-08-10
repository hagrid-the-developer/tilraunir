#!/usr/bin/env bash

g++ -fPIC -c epona.cc
gcc -shared -Wl,-export-dynamic,-soname,libepona.so -o libepona.so epona.o
gcc -shared -Wl,-export-dynamic,-soname,libepona-hidden.so,-version-script=epona.map -o libepona-hidden.so epona.o

objcopy --localize-symbol=_ZN5epona1gEi libepona.so libepona-hidden2.so

# nm libepona.so | grep ' [TS] '
# objdump -D libepona.so | less
