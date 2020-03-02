/* g++ -std=c++17 -o llofll llofll.cxx */


#include <memory>

template <typename T>
struct Node {
	Node *next_ = nullptr;
	T data_;

	Node() = default;
	Node(T t, Node *next = nullptr)
	: next_{next}
	, data_{std::move(t)}
	{ }
};

template <typename T>
struct LinkedList {
	Node<T> *first_ = nullptr;

	LinkedList() = default;
	LinkedList(LinkedList const&) = delete;
	LinkedList(LinkedList&& other)
	: first_{other.first_}
	{
		other.first_ = nullptr;
	}

	LinkedList& operator=(LinkedList const&) = delete;
	LinkedList& operator=(LinkedList&& other)
	{
		first_ = other.first_;
		other.first_ = nullptr;
	}

	bool is_empty() const noexcept {
		return nullptr == first_;
	}

	~LinkedList() {
		if (is_empty())
			return;

		Node<T> *item = first_;
		Node<T> *next = item;
		do {
			next = next->next_;
			delete item;
			item = next;
		} while (nullptr != item);
	}
};

template <typename T>
void push(LinkedList<T>& ll, T t) {
	auto node = new Node<T>(std::move(t), ll.first_);
	ll.first_ = node;
}

template <typename T>
using ListOfList = LinkedList<LinkedList<T>>;

int
main(void) {
	ListOfList<int> l;
}
