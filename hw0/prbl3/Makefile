CC=gcc
CFLAGS=-I .
FLAGS=-g -Wall -std=c99
LDFLAGS=-lpthread
TARGET=prbl3
OBJS=linked_list.o thread.o main.o

$(TARGET):$(OBJS) 
	$(CC) $(FLAGS) -o $(MIPS32_TARGET) $(OBJS) $(CFLAGS) $(LDFLAGS) 
.c.o:
	$(CC) $(FLAGS) $(CFLAGS) -o $@ -c $<
clean:
	rm -rf *.o $(TARGET)
