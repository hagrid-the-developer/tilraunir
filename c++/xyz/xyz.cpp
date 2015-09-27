#include <iostream>
#include <fstream>

#include <dirent.h>

namespace {
	const std::string ATHEISM_DIR = "alt.atheism";
	const std::string GRAPHICS_DIR = "comp.graphics";

	bool examine_file(const std::string &fn) {
		int sentences_num = 0;
		int last_question = -5;

		std::ifstream in(fn);
		for (int c; c = in.get(), in.good();) {
			switch (c) {
				case '?':
					last_question = sentences_num;
					/* really no break here */
				case '.':
				case '!':
					++sentences_num;
			}
		}

		return sentences_num - last_question <= 4;
	}

	void examine_dir(const std::string &dn) {
		DIR *d = ::opendir(dn.c_str());
		if (!d) {
			std::cerr << "Cannot read directory: " << dn << ";" << std::endl;
			return;
		}
		for (struct dirent *dir; (dir = ::readdir(d)) != nullptr; ) {
			const std::string fn = dn + '/' + dir->d_name;
			std::cout << "\t<tr><td>" << fn << "</td><td>";
			if (examine_file(fn)) {
				std::cout << "yes";
			} else {
				std::cout << "no";
			}
			std::cout << "</td></tr>" << std::endl;
		}
		::closedir(d);
	}
}

int
main(int argc, char *argv[]) {
	if (argc != 2) {
		std::cerr << "Give me the dir name :-(" << std::endl;
		return 1;
	}

	const std::string dir_name = argv[1];

	std::cout << "<table>" << std::endl;
	examine_dir(dir_name + '/' + ATHEISM_DIR);
	examine_dir(dir_name + '/' + GRAPHICS_DIR);
	std::cout << "</table>" << std::endl;
	return 0;
}
