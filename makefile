CC=gcc
EXEC=minesweeper

all: $(EXEC)

$(EXEC): main.o game.o board.o rendering.o file.o
	$(CC) main.o game.o board.o rendering.o file.o -lsdl2 -o $(EXEC)

main.o: main.c
	$(CC) -c main.c

game.o: game.c game.h
	$(CC) -c game.c

board.o: board.c board.h
	$(CC) -c board.c

rendering.o: rendering.c rendering.h
	$(CC) -c rendering.c

file.o: file.c file.h
	$(CC) -c file.c

clean:
	rm -f *.o $(EXEC)
