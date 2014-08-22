Various experiments with dynamic libraries under Linux and with hiding
of the symbols.

It seems that hiding symbols with symbol-map force the compiler to replace
calling of PLT items with direct calling of hidden functions.

Hiding symbols with binutils leave the symbol in PLT and function is still
called through PLT.

TODO: Function `int f(int, int)` isn't in the PLT table, why? -- Probably
	because it isn't used inside the library?

Literature:

[1] <http://www.ibm.com/developerworks/aix/library/au-aix-symbol-visibility/index.html>
[1]: http://www.ibm.com/developerworks/aix/library/au-aix-symbol-visibility/index.html<br/>
[2] <http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html>
[2]: http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html<br/>
[3] <http://www.akkadia.org/drepper/dsohowto.pdf>
[3]: http://www.akkadia.org/drepper/dsohowto.pdf<br/>