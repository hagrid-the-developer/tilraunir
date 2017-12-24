#include <iostream>

void output(char* array, int size);
void declaration(int napaka) {
	int max = 0;
	char *array[7] = {
		"  |",
		"  2",
		"  3",
		"  4",
		"  5",
		"  6",
		"__7__"
	};
	max = 7;
	output(*array, max);
}

void output(char* array, int size) {
	for(int i =0; i < size; ++i)
		std::cout << array[i] << std::endl;
}

int main(void) {
	declaration(0);
}
