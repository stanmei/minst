CC=mips-linux-gnu-gcc
CFLAGS=-I .
FLAGS=-g -Wall
MIPS32_TARGET=test_mips32

$(MIPS32_TARGET): linked_list.o linked_list_test.o
	$(CC) $(FLAGS) -o $(MIPS32_TARGET) linked_list.o linked_list_test.o $(CFLAGS) 

clean:
	rm -rf *.o $(TARGET_TARGET)
