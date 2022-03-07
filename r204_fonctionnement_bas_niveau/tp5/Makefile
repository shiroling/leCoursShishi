CC = gcc
CFLAGS = -g
SOURCES = $(wildcard *.c)
BINAIRES = $(patsubst %.c,%.o,${SOURCES})

synthese : ${BINAIRES}
	${CC} ${CFLAGS} -o $@ $^

synthese.o : clients.h

clients.o : clients.h

clean :
	rm -f synthese
	rm -f *.o

