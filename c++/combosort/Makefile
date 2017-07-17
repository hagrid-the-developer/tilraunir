main: main.cpp
	g++ -std=gnu++1z -I/opt/boost/include -Ofast -c main.cpp
	g++ -std=gnu++1z main.o /opt/boost/lib/libboost_system.a -o main

.PHONY: main
clean:
	rm -v *.o main
