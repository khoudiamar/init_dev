CC=gcc -Wall -O2
SRC=main.c module1.c module2.c
OBJ=main.o module1.o module2.o
EXE=roger.bin

all: $(OBJ)
    $(CC) $(OBJ) -o $(EXE)

main.o: main.c
    $(CC) main.c \
        -o main.o
module1.o: module1.c
    $(CC) module1.c \
        -o module1.o
module2.o: module2.c
    $(CC) module2.c \
        -o module2.o

clean:
    rm -f *~

distclean: clean
    rm -f *.o $(EXE)

