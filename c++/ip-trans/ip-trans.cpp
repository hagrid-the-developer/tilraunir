#include <cstdio>
#include <cstdint>
#include <boost/asio.hpp>

namespace {

void print_addr(FILE *f, const ::uint8_t *b, const ::size_t len = 16) noexcept {
	for (::size_t i = 0; i < len; ++i) {
		if (i > 0)
			fprintf(f, " ");
		fprintf(f, "%.2u", (unsigned)b[i]);
	}
}

void test(const char *str_addr) {
	const auto addr = boost::asio::ip::address::from_string(str_addr);
	const auto addr6 = addr.to_v6();

	in6_addr posix_addr;
	if (1 != ::inet_pton(AF_INET6, str_addr, &posix_addr))
		exit(1);

	print_addr(stderr, addr6.to_bytes().data()); fprintf(stderr, "\n");
	print_addr(stderr, reinterpret_cast<const ::uint8_t*>(&posix_addr)); fprintf(stderr, "\n");

}

} /* Namespace Anonymouse */

int
main(void) {
	test("::FFFF:204.152.189.116");

	return 0;
}
