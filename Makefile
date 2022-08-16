CC=gcc
CFLAGS=-Wall -pedantic-errors -g

linkedList.o: src/linkedList.c src/linkedList.h
	$(CC) -c $< $(CFLAGS)