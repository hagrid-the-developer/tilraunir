#include <iostream>
#include <type_traits>

namespace {

using uns = unsigned;

enum class Channel {
	  NONE
	, LEFT
	, RIGHT
	, BOTH
};


template <typename Descendant>
class TimeInterval {
public:
	TimeInterval() = default;
	constexpr uns beg_val(const uns time_beg, const uns time_end) {
		return time_beg <= time_end ? time_beg : ~0U;
	}
	constexpr uns end_val(const uns time_beg, const uns time_end) {
		return time_beg <= time_end ? time_end : 0;
	}
};

class SearchResult : public TimeInterval<SearchResult> {
public:
	/*constexpr*/ SearchResult() = default;
	//struct BZero{};
	///*constexpr*/ SearchResult(const BZero&)
	//{
	//	::bzero(this, sizeog(*this));
	//}
	constexpr SearchResult(const uns time_beg, const uns time_end, const Channel channels = Channel::BOTH, const float confidence = 1.f)
	:	TimeInterval<SearchResult>()
	,	time_beg_(beg_val(time_beg, time_end))
	,	time_end_(end_val(time_beg, time_end))
	,	channels_(channels)
	,	confidence_(confidence) {
	}
	SearchResult(const SearchResult&) = default;
	SearchResult(SearchResult&&) = default;

	SearchResult &operator=(const SearchResult&) = default;
	SearchResult &operator=(SearchResult&&) = default;

	constexpr uns time_beg() const noexcept {
		return time_beg_;
	}

	constexpr uns time_end() const noexcept {
		return time_beg_;
	}

	constexpr Channel channels() const noexcept {
		return channels_;
	}

	constexpr float confidence() const noexcept {
		return confidence_;
	}

	friend inline std::ostream &operator<<(std::ostream &o, const SearchResult &sr) noexcept {
		o << '<';

		/*
		if (sr.empty())
			;
		else if (sr.time_beg() == sr.time_end())
			o << sr.time_beg();
		else
			o << sr.time_beg() << ", " << sr.time_end();

		o << "; " << sr.channels();

		if (sr.confidence() < 1.f) {
			o << "; " << std::setprecision(2) << sr.confidence();
		}
		*/
	
		return o << '>';
	}

public:
	uns time_beg_;
	uns time_end_;
	Channel channels_;
	float confidence_;
};

} /* Anonymous Namespace */


int
main(void) {
	std::cerr << "is_pod<SearchResult>: " << std::is_pod<SearchResult>::value << std::endl;

	return 0;
}
