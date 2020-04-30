#!/usr/bin/env bash

set -eo pipefail

TMP="$PWD/tmp/$$"
SRV_OUT="$TMP/srv.out"
SRV_ERR="$TMP/srv.err"
NFQ_OUT="$TMP/nfq.out"
NFQ_ERR="$TMP/nfq.err"
NC_OUT="$TMP/nc.out"
NC_ERR="$TMP/nc.err"
EXPECTED_OUT="$TMP/expected.out"

function atexit()
{
    echo >&2 "Killing background jobs..."
    ! sudo kill $(jobs -p) 2>/dev/null
}

function run_srv()
{
    "$PWD/echo-server.py" >"$SRV_OUT" 2>"$SRV_ERR" &
}

function run_nfq()
{
    sudo "$PWD/nfqnl_test" >"$NFQ_OUT" 2>"$NFQ_ERR" &
}

function print_expected_output()
{
    for _ in {0..3000}; do echo 'hola svete' $_; done
}

function print_nc_input()
{
    for _ in {0..3000}; do echo 'ahoj svete' $_; done
}

# Main

trap "atexit" EXIT

mkdir -p "$TMP"
echo >&2 "Created tmp: \`$TMP'"

run_srv
run_nfq

print_expected_output >"$EXPECTED_OUT"

print_nc_input | nc -q5 127.0.0.1 1024 >"$NC_OUT" 2>"$NC_ERR"

[ -s "$NC_ERR" ] && echo >&2 "WARN: Nonempty stderr from netcat: \`$NC_ERR'"
if ! cmp -s "$NC_OUT" "$EXPECTED_OUT"
then
    echo >&2 "Output from netcat differs from expected output :-("
    diff -up "$EXPECTED_OUT" "$NC_OUT" | head -n32
    exit 1
fi

echo >&2 "Passed"