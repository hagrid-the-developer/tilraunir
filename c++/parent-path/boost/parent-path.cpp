#include <boost/filesystem.hpp>
#include <iostream>

/*
 * $ g++ -std=gnu++14 -I/opt/boost-1.62.0/include -L/opt/boost-1.62.0/lib -o parent-path parent-path.cpp /opt/boost-1.62.0/lib/libboost_{file,}system.a
 * $ ./parent-path
 * Parent-path:/everything/works
 *
 */

int
main(void) {
	namespace fs = boost::filesystem;

	const auto parent = fs::path("/everything/works/run.bin").parent_path().string();
	std::cerr << "Parent-path:" << parent << std::endl;

	return 0;
}
