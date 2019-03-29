CC=gcc
CFLAGS=-g -Wall -Wextra -pedantic

all:		pdureader

pdureader:	pdureader.c
		$(CC) $(CFLAGS) pdureader.c $(LFLAGS) -o pdureader
clean:
		rm -f pdureader
valgrind:	clean all
		valgrind --leak-check=full -v ./pdureader -f dumps/pdudump_pdu.txt

.PHONY:		all clean
