#include "error.hpp"

#include <boost/asio.hpp>
#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include <iostream>

namespace {

namespace nio = boost::asio;
namespace beast = boost::beast;
namespace http = boost::beast::http;

nio::ip::address resolve(nio::io_service& io, const std::string& host) {
	nio::ip::tcp::resolver resolver(io);
	nio::ip::tcp::resolver::query query(host, "");
	auto it = resolver.resolve(query);
	boost::system::error_code error_code;

	for (auto& end: resolver.resolve(query, error_code)) {
		return nio::ip::tcp::endpoint(end).address();
	}

	throw meave::Error("Cannot resolve: ") << host << " : " << error_code.message();
}

std::string load_json(const std::string& host, const unsigned short port, const std::string& path) try {
	nio::io_service io;

	boost::system::error_code error_code;

	const auto addr = resolve(io, host);

	nio::ip::tcp::endpoint endpoint{addr, port};
	nio::ip::tcp::socket sock{io};
	sock.connect(endpoint, error_code);
	if (error_code)
		throw meave::Error("Cannot connect to: ") << host << ": " << error_code.message();

	http::request<http::empty_body> req;
	req.version(11);   // HTTP/1.1
	req.method(http::verb::get);
	req.target(path);
	req.set(http::field::host, host);
	req.set(http::field::accept, "application/json");
	req.set(http::field::user_agent, "Beast");

	http::write(sock, req, error_code);
	if (error_code)
		throw meave::Error("Cannot send HTTP request to ") << host << ": " << error_code.message();

	boost::beast::flat_buffer buffer;
	http::response_parser<http::string_body> parser;
	http::read(sock, buffer, parser, error_code);
	if (error_code)
		throw meave::Error("Cannot read HTTP response from ") << host << ": " << error_code.message();

	return parser.get().body();
} catch (const boost::system::system_error& e) {
	throw meave::Error("Cannot make HTTP request for: ") << host << ": " << e.what();
}

} /* anonymous namespace */

int
main(void) {
	const auto json = load_json("meave.net", 80, "/xyz.json");
	std::cout << "Response body: " << json << std::endl;
}
