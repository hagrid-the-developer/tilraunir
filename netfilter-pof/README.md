Files
=====

* `nf-queue.c` -- Based on example with new `NFQ` interface. WIP, it doesn't link on `Debian 10`.
  Maybe the new interface is not stable yet and it is better to go with obsolete interface for now.

* `nfqnl_test.c` -- Implementation with obsolete interface, can rewrite payload of TCP packets.
It is in pure C so resource and error handling is a bit complicated.

* `echo_server.py` -- Quick & Dirty implementation of echo server in Python.

* `run_nfqnl_test.sh` -- Shell script that runs the test automatically.


Install the libraries
=====================

Installation of libraries on Debian-based system:

        $ sudo apt install libnetfilter-queue-dev
        $ sudo apt install libnftnl-dev


Running the test with obsolete interface
========================================

Running the test by hand
------------------------

Test runs over `localhost`, it uses port `1024`. It is necessary to rewrite
`iptables` rules so it is better to run the test on virtual machine, or inside docker, etc.

- Configure the iptables, eg.:

        $ sudo iptables -A INPUT -p tcp -s 127.0.0.1 -j NFQUEUE --queue-num 0
        $ sudo iptables -A OUTPUT -p tcp -d 127.0.0.1 -j NFQUEUE --queue-num 0

- First terminal:

        $ ./echo-server.py


- Second terminal:

        $ make obsolete
        $ sudo ./nfqnl_test

- Third terminal:

        $ echo 'ahoj svete' | nc -q5 127.0.0.1 1024

Note: `nc` is called with parameter `-q5` to force it to close the connection
5 seconds after `EOF` on `stdin`.
It is not ideal but hopefully it is acceptable compromise for this test.

Running semi-automatic test
---------------------------

There is a script `run_nfqnl_test.sh` that runs all three parts (tcp server, NFQ server and `netcat`) for you.

Steps to run test with this scipt:


- Configure the iptables, eg.:

        $ sudo iptables -A INPUT -p tcp -s 127.0.0.1 -j NFQUEUE --queue-num 0
        $ sudo iptables -A OUTPUT -p tcp -d 127.0.0.1 -j NFQUEUE --queue-num 0

- Build the C binary:

        $ make obsolete

- Run the script:

        $ ./run_nfqnl_test.sh
        Created tmp: `/.../tmp/17209'
        Passed
        Killing background jobs...

Script uses `sudo` to run some commands with `root` privileges. It creates directory where it
stores `stdout` and `stderr` of commands it runs. After it runs the test, it checks that data sent to
`echo server` are modified in an expected way, prints `Passed` and returns `0` exit status.
It prints error message and returns non-zero exit status otherwise.