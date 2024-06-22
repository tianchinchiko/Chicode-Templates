CFLAGS = -g -Wall -Wextra -std=c99
CLIBS = -Isrc/Include -Lsrc/lib -lmingw32 -lSDL2main \
		-lSDL2_image -lSDL2_ttf -lSDL2_mixer -lSDL2
OBJECTS = main.o

all: test_Pong	#default goal

test_Pong: $(OBJECTS)
	gcc $(CFLAGS) -o test_Pong $(OBJECTS) $(CLIBS)

main.o: main.c
	gcc $(CFLAGS) -c main.c $(CLIBS)

run:
	test_Pong

.PHONY : clean
clean:
	-del -f *.o *.exe