#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>

#include <fstream>
#include <iostream>

namespace $ = std;

::uint64_t file_size(const $::string &fn) {
	struct stat st;

	if (::stat(fn.c_str(), &st))
		throw $::system_error(errno, $::system_category());

	if (::uint64_t(st.st_size) != st.st_size)
		throw $::system_error(EFBIG, $::system_category());

	return ::uint64_t(st.st_size);
}

$::string read_whole_file(const $::string &fn) {
	const auto fs = file_size(fn);

	if (::size_t(fs) != fs)
		throw $::system_error(EFBIG, $::system_category());

	$::fstream f;
	f.exceptions($::ifstream::failbit | $::ifstream::badbit | $::ifstream::eofbit);
	f.open(fn.c_str());

	$::string r(::size_t(fs), '~');
	f.read(&r[0], ::size_t(fs));

	return r;
}

int
main(int argc, char *argv[]) {

	for (int i = 1; i < argc; ++i) {
		const $::string fn = argv[i];
		$::cerr << "fn:[" << fn << "] -> [" << read_whole_file(fn) << "]" << $::endl;
	}

	return 0;
}
