Various experiments with dynamic libraries under Linux and with hiding
of the symbols.

It seems that hiding symbols with symbol-map force the compiler to replace
calling of PLT items with direct calling of hidden functions.

Hiding symbols with binutils leave the symbol in PLT and function is still
called through PLT.

TODO: Function `int f(int, int)` isn't in the PLT table, why? -- Probably
	because it isn't used inside the library?


    $ readelf -a libepona-hidden.so
    ...
    Relocation section '.rela.plt' at offset 0x4c8 contains 2 entries:
      Offset          Info           Type           Sym. Value    Sym. Name + Addend
    000000201018  000300000007 R_X86_64_JUMP_SLO 0000000000000000 __gmon_start__ + 0
    000000201020  000600000007 R_X86_64_JUMP_SLO 0000000000000000 __cxa_finalize + 0

    The decoding of unwind sections for machine type Advanced Micro Devices X86-64 is not currently supported.

    Symbol table '.dynsym' contains 9 entries:
       Num:    Value          Size Type    Bind   Vis      Ndx Name
         0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
         1: 00000000000004f8     0 SECTION LOCAL  DEFAULT   10
         2: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_deregisterTMCloneTab
         3: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
         4: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _Jv_RegisterClasses
         5: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_registerTMCloneTable
         6: 0000000000000000     0 FUNC    WEAK   DEFAULT  UND __cxa_finalize@GLIBC_2.2.5 (3)
         7: 0000000000000635    46 FUNC    GLOBAL DEFAULT   12 _ZN5epona1fEii@@MYPLUGIN
         8: 0000000000000000     0 OBJECT  GLOBAL DEFAULT  ABS MYPLUGIN
    ...

    $ readelf -a libepona-hidden2.so
    ...
    Relocation section '.rela.plt' at offset 0x548 contains 3 entries:
      Offset          Info           Type           Sym. Value    Sym. Name + Addend
    000000201018  000d00000007 R_X86_64_JUMP_SLO 0000000000000703 _ZN5epona1gEi + 0
    000000201020  000300000007 R_X86_64_JUMP_SLO 0000000000000000 __gmon_start__ + 0
    000000201028  000600000007 R_X86_64_JUMP_SLO 0000000000000000 __cxa_finalize + 0

    The decoding of unwind sections for machine type Advanced Micro Devices X86-64 is not currently supported.

    Symbol table '.dynsym' contains 14 entries:
       Num:    Value          Size Type    Bind   Vis      Ndx Name
         0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
         1: 0000000000000590     0 SECTION LOCAL  DEFAULT    9
         2: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_deregisterTMCloneTab
         3: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
         4: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _Jv_RegisterClasses
         5: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_registerTMCloneTable
         6: 0000000000000000     0 FUNC    WEAK   DEFAULT  UND __cxa_finalize@GLIBC_2.2.5 (2)
         7: 0000000000201038     0 NOTYPE  GLOBAL DEFAULT   21 _edata
         8: 00000000000006d5    46 FUNC    GLOBAL DEFAULT   11 _ZN5epona1fEii
         9: 0000000000201040     0 NOTYPE  GLOBAL DEFAULT   22 _end
        10: 0000000000201038     0 NOTYPE  GLOBAL DEFAULT   22 __bss_start
        11: 0000000000000590     0 FUNC    GLOBAL DEFAULT    9 _init
        12: 0000000000000714     0 FUNC    GLOBAL DEFAULT   12 _fini
        13: 0000000000000703    16 FUNC    GLOBAL DEFAULT   11 _ZN5epona1gEi
    ...

Literature:

[1] <http://www.ibm.com/developerworks/aix/library/au-aix-symbol-visibility/index.html>
[1]: http://www.ibm.com/developerworks/aix/library/au-aix-symbol-visibility/index.html<br/>
[2] <http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html>
[2]: http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html<br/>
[3] <http://www.akkadia.org/drepper/dsohowto.pdf>
[3]: http://www.akkadia.org/drepper/dsohowto.pdf<br/>
