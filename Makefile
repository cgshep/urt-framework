LIBS=-Llib
CFLAGS=-O3 -Wall -Iinclude
CC=gcc
SRC=src

testu01.o:
	$(CC) $(SRC)/testu01.c -o testu01.o $(CFLAGS) $(LIBS) -ltestu01

clean:
	rm testu01
