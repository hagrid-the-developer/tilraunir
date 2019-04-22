#!/usr/bin/env bash

g++ -c xyz.cpp
echo 'With std::ostream:'
nm xyz.o | c++filt | fgrep 'operator<<'

g++ -c xyz.cpp -DCUSTOM_STREAM
echo 'With xyz::Stream:'
nm xyz.o | c++filt | fgrep 'operator<<'
