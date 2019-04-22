Tests with unused functions and symbols
=======================================

        $ ./run.sh
        With std::ostream:
        0000000000000000 W xyz::operator<<(std::basic_ostream<char, std::char_traits<char> >&, xyz::A const&)
        With xyz::Stream:
        0000000000000000 W xyz::operator<<(xyz::Stream&, xyz::A const&)

Inline functions that aren't used are not present in the final object file. Operator is in both caes in namespace `xyz`.
