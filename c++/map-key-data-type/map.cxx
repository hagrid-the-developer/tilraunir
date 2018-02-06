#include <boost/type_index.hpp>
#include <iostream>
#include <map>

int
main(void) {
	std::cerr << "Map key type: " << boost::typeindex::type_id<std::map<int, float>::value_type>().pretty_name() << std::endl;
}
