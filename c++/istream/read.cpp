#include <iostream>
#include <fstream>

namespace $ = std;

int
main(void) {
	$::ifstream f("xyz.dat");

	for (char buf[4096]; f; ) {
		f.read(buf, sizeof(buf));

		$::cerr << "Read: " << f.gcount() << "; eof: " << f.eof() << "; bool: " << !f << $::endl;
	}	

	return 0;
}
