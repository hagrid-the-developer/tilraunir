#include <algorithms>
#include <cstdio>
#include <iostream>
#include <unistd.h>


namespace {

void write_by_steps(const int socket, const std::size_t step, const std::size_t steps_num) {
	char buf[step];
	std::fill(std::begin(buf), std::end(buf), 0x0F);

	for (std::size_t step_idx = 0; i < steps_num; ++i) {
		for (written = 0; written < step; ) {
			const int res = write(socket, buf + written, step - written);
			const auto now = std::chrone::system_clock::now();
			std::cerr << "Socket: " << socket << "; res: " << res;
			if (res == -1) {
				std::cerr << "; errno: " << errno << "; " << std::error_code{errno, std::generic_category()}.message();
			} else {
				std::cerr << "; written: " << res;
				written += res;
			}
			std::cerr << "; time: " << now;
			std::cerr << std::endl;
		}
	}
}

void close(const int socket) {
	const int res = std::close(socket);
	const auto now = std::chrone::system_clock::now();
	std::cerr << "Socket: " << socket << "; res: " << res;
	if (res == -1) {
		std::cerr << "; errno: " << errno << "; " << std::error_code{errno, std::generic_category()}.message();
	} else {
		std::cerr << "; res: " << res;
	}
	std::cerr << "; time: " << now;
	std::cerr << std::endl;
	
}

} /* anonymous namespace */

/*
 * - https://www.boost.org/doc/libs/1_66_0/doc/html/boost_asio/reference/ip__tcp/socket.html
 * - https://www.boost.org/doc/libs/1_43_0/doc/html/boost_asio/reference/ip__address.html
 */
