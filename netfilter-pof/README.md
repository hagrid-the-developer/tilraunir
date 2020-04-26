Running the test with obsolete interface
========================================

- First terminal:

    $ ./echo-server.py


- Second terminal:

    $ make obsolete
    $ sudo iptables -A INPUT -p tcp -s 127.0.0.1 -j NFQUEUE --queue-num 0
    $ sudo iptables -A OUTPUT -p tcp -d 127.0.0.1 -j NFQUEUE --queue-num 0
    $ sudo ./nfqnl_test

- Third terminal:

    $ echo 'ahoj svete' | nc 127.0.0.1 1024

