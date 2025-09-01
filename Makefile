CXX=g++
CFLAGS=-g -Wall -Werror -O3 -lcrypto

SRC=$(wildcard *.cpp)
OBJ=$(SRC:.cpp=.o)
BIN=out


all: $(BIN)


%.o: %.cpp rsa.h
	$(CXX) $(CFLAGS) -c $@ $<

$(BIN): $(OBJ)
	@echo $(SRC)
	$(CXX) $(CFLAGS) -o $@ $^

.PHONY: clean

clean:
	rm -f $(BIN) $(OBJ)
