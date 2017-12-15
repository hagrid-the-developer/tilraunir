/*
 * $ g++ -std=gnu++14 -I /opt/boost/include/ -L /opt/boost/lib -lboost_filesystem -lboost_system -o file-type file-type.cxx
 * $ DYLD_LIBRARY_PATH=/opt/boost/lib ./file-type ...
 *
 */


#include <boost/filesystem.hpp>
#include <iostream>

namespace fs = boost::filesystem;

int
main(int argc, char *argv[]) {
	for (int i = 1; i < argc; ++i) {
		const std::string str_path{argv[i]};
		std::cerr << "File: " << str_path << "; status: " << fs::status(str_path).type() << std::endl;
	}
}
