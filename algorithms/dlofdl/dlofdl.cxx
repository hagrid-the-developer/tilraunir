#include <cassert>
#include <cstdio>
#include <memory>

template <typename T>
class DList {
    struct Node { Node *next_, *prev_; };
    struct DataNode : public Node { T t_;};

    Node head_;

    void insert(Node *before, Node *after, T t)
    {
        Node *what = new Node{before, after, std::move(t)};
        after->next_ = what;
        before->prev_ = what;
    }

public:
    DList() noexcept
    : head_{&head_, &head_} {
    }
    DList(DList const&) = delete;
    DList(DList &&l) noexcept
    :   head_{l.head_.next_, l.head_.prev_} {
        l.head_.next_ = &l.head_;
        l.head_.prev_ = &l.prev_;
    }

    DList& operator=(DList const&) = delete;
    DList& operator=(DList &&l) noexcept {
        head_.next_ = l.head_.next_;
        head_.prev_ = l.head_.prev_;
        l.head_.next_ = &l.head_;
        l.head_.prev_ = &l.prev_;

        return *this;
    }

    ~DList() {
        for (Node *item = head_.next_, *next; item != &head_; item = next) {
            next = item->next_;
            delete &get(item);
        }
    }

    void insert_after(Node *after, T t) {
        insert(after->next_, after, std::move(t));
    }
#if 0
    void insert_after(Node *after, T t) {
        Node *what = new Node{after->next_, after, std::move(t)};
        after->next_->prev_ = what;
        after->next_ = what;
    }
#endif

    void insert_before(Node *before, T t) {
        insert(before, before->prev_, std::move(t));
    }
#if 0
    void insert_before(Node *before, T t) {
        Node *what = new Node{before, before->prev_, std::move(t)};
        before->prev_->next_ = what;
        before->prev_ = what;
    }
#endif

    void insert_front(T t) {
        insert(&head_, head_.next_, std::move(t));
    }

    void insert_back(T t) {
        insert(head_.prev_, &head_, std::move(t));
    }

    T& get(Node *n) noexcept {
        assert(n != &head_);
        return static_cast<DataNode*>(n)->t_;
    }

    T const& get(Node const *n) const noexcept {
        assert(n != &head_);
        return static_cast<DataNode*>(n)->t_;
    }

    Node* next(Node const *n) const noexcept {
        return n != &head_ ? n->next : nullptr;
    }

    Node* prev(Node const *n) const noexcept {
        return n != &head_ ? n->prev : nullptr;
    }

    Node* first() const noexcept {
        return head_.next_;
    }

    Node* last() const noexcept {
        return head_.prev_;
    }
};

template<typename T>
using DListOfDList = DList<DList<T>>;

int main(void) {
    DListOfDList<int> l;
}