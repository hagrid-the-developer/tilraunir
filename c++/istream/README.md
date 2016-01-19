Test of bit flags for stream
============================

	$ dd if=/dev/urandom of=xyz.dat bs=2k count=11
	11+0 records in
	11+0 records out
	$ g++ -std=gnu++1y read.cpp -o read
	$ ./read
	Read: 4096; eof: 0; bool: 0
	Read: 4096; eof: 0; bool: 0
	Read: 4096; eof: 0; bool: 0
	Read: 4096; eof: 0; bool: 0
	Read: 4096; eof: 0; bool: 0
	Read: 2048; eof: 1; bool: 1