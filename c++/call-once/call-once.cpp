#include <memory>
#include <mutex>


/*
 * Taken from https://www.youtube.com/watch?v=c1gO9aB9nbs , time 27:00 .
 * Slide that is presented there seems to contain several mistakes:
 * 	* Lambda function with `[=]` .
 * 	* Return statement from `get_instance()` should contain `*instance`,
 * 	  not `instance` .
 *
 *
 */

namespace $ = std;

class X {
};

class Widget {
private:
	static $::unique_ptr<X> x;
	static $::once_flag create;

public:
	static X &get_x() {
		$::call_once(create, []{ x = $::make_unique<X>(); });
		return *x;
	}
};
$::unique_ptr<X> Widget::x;
$::once_flag Widget::create;


int
main(void) {
	Widget::get_x();

	return 0;
}
