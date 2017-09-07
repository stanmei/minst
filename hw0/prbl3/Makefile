CC=gcc
CFLAGS=-I .
FLAGS=-g -Wall -std=c99
LDFLAGS=-lpthread
TARGET=prbl3
OBJS=prbl3_main.o linked_list.o thread.o lock.o

$(TARGET):$(OBJS) 
	$(CC) $(FLAGS) -o $(TARGET) $(OBJS) $(CFLAGS) $(LDFLAGS) 

.c.o:
	$(CC) $(FLAGS) $(CFLAGS) -o $@ -c $<
clean:
	rm -rf *.o $(TARGET)
