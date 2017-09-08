MIPSCC=mips64-linux-gnuabi64-gcc
CFLAGS=-c
ASFLAGS=-S
FLAGS=-g -Wall -static 
MIPS64_TARGET=mips64_linked_list
OBJS=linked_list_main.o linked_list_push.o linked_list_append.o

$(MIPS64_TARGET): $(OBJS)
	$(MIPSCC) $(FLAGS) $(OBJS) -o $(MIPS64_TARGET) 

linked_list_push.o:linked_list_push.s
	$(MIPSCC) $(CFLAGS) linked_list_push.s

linked_list_append.o:linked_list_append.s
	$(MIPSCC) $(CFLAGS) linked_list_append.s

linked_list_main.o:linked_list_main.s
	$(MIPSCC) $(CFLAGS) linked_list_main.s


linked_list_push.s:linked_list_push.i
	$(MIPSCC) $(ASFLAGS) linked_list_push.i -o linked_list_push.s

linked_list_append.s:linked_list_append.i
	$(MIPSCC) $(ASFLAGS) linked_list_append.i -o linked_list_append.s

linked_list_main.s:linked_list_main.i
	$(MIPSCC) $(ASFLAGS) linked_list_main.i -o linked_list_main.s


linked_list_push.i:linked_list_push.c
	$(MIPSCC) -E linked_list_push.c -o linked_list_push.i

linked_list_append.i:linked_list_append.c
	$(MIPSCC) -E linked_list_append.c -o linked_list_append.i

linked_list_main.i:linked_list_main.c
	$(MIPSCC) -E linked_list_main.c -o linked_list_main.i

#.S.o:
#	$(MIPSCC) $(ASFLAGS) -o $@ -c $< 

#.c.o:
#	$(MIPSCC) $(CFLAGS) -o $@ -c $<

#$(MIPS64_TARGET): $(OBJS)
#	$(MIPSCC) $(FLAGS) -o $@ $^

clean:
	rm -rf *.o *.i *.s $(MIPS64_TARGET)
