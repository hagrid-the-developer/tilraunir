/*
 * $ g++ -std=c++14 change_map_vals.cxx
 * $ ./a.out
 * k:first; v:Greta Gothard;
 * k:second; v:Willow Gothard;
 * k:third; v:Solana Gothard;
 */


#include <iostream>
#include <map>
#include <string>

namespace {

using map = std::map<std::string, std::string>;

static void change_items(map& m) {
	for (auto& kv: m) {
		const auto key = kv.first;
		auto& val = kv.second;

		val = val + " Gothard";
	}
}

} /* anonymous namespace */

int
main(void) {
	map m{{"first", "Greta"}, {"second", "Willow"}, {"third", "Solana"}};
	change_items(m);
	for (const auto& kv: m) {
		std::cerr << "k:" << kv.first << "; v:" << kv.second << ";" << std::endl;
	}
}
