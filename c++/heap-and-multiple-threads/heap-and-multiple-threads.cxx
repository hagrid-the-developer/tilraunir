#include <atomic>
#include <cstdio>
#include <thread>

static std::atomic<int*> array{nullptr};

int
main(void)
{
	std::thread the_alloc([] {
		for (;;) {
			while (array.load());
			int *p = new int[128];
			fprintf(stderr, "Allocated: %p\n", p);
			array.store(p);
		}
	});

	for(;;) {
		int* p = nullptr;
		while (!(p = array.load()));
		delete[] p;
		array.store(nullptr);
	}
}
