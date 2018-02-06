Map value type and boost::typeindex
-----------------------------------

This experiment demonstrates that `value_type` of `std::map` is `std::pair<const K, V>`
and it also demonstates abilities of `boost::typeindex`.

    $ g++ -I/opt/boost/include map.cxx
    $ ./a.out
    Map key type: std::__1::pair<int const, float>