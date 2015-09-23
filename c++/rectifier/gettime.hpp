#ifndef GETTIME_HPP_INCLUDED
#define GETTIME_HPP_INCLUDED

#include <cstdlib>
#include <memory.h>
#include <sys/time.h>

namespace {

double gettime() noexcept {
	struct timeval tv;
	if (-1 == gettimeofday(&tv, nullptr))
		::abort(); // This could only happen by some mistake in the program.
	return tv.tv_sec + tv.tv_usec/1000000.0;
}

} /* anonymouse namespace */

#endif // GETTIME_HPP_INCLUDED
