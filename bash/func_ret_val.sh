#!/usr/bin/env bash

# http://www.linuxjournal.com/content/return-values-bash-functions

function ret_val {
    eval $1=2341;
}

function test {
    local x=999;
    ret_val x
    echo $x
}

test
