#include <iostream>


int period(int n) {
	// 2^30 - 1 > 10^9
	int d[30];
	int l = 0;
	while (n > 0) {
		d[l] = n % 2;
		n /= 2;
		l++;
	}

	for (int p = l/2; p > 0; --p) {
		bool ok = true;
		for (int i = 0; i < l - p; ++i) {
			if (d[i] != d[i +p]) {
				ok = false;
				break;
			}
		}
		if (ok) {
			return p;
		}
	}
	return -1;
}

int
main(void) {
	std::cout << period(955) << std::endl;
}
