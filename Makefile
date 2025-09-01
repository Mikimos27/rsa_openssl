CXX=g++
CFLAGS=-g -Wall -Werror -O3 -lcrypto

all: out


crypt.o: crypt.cpp
	$(CXX) $(CFLAGS) -c $@ $^

rsa.o: rsa.cpp rsa_*
	$(CXX) $(CFLAGS) -c $@ rsa.cpp

out: rsa.o crypt.o
	$(CXX) $(CFLAGS) -o $@ $^

.PHONY: clean

clean:
	rm *.o
