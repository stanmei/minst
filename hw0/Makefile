CC=gcc
CFLAGS=-I .
FLAGS=-Wall
TARGET=test

$(TARGET): linked_list.o linked_list_test.o
	$(CC) $(FLAGS) -o $(TARGET) linked_list.o linked_list_test.o $(CFLAGS) 

clean:
	rm -rf *.o $(TARGET)
