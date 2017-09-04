MIPSCC=mips-linux-gnu-gcc
CFLAGS=-c
ASFLAGS=-S
FLAGS=-g -Wall 
MIPS32_TARGET=test_mips32
OBJS=linked_list.o linked_list_test.o
#SRC=linked_list.c linked_list_test.c

$(MIPS32_TARGET): $(OBJS)
	$(MIPSCC) $(FLAGS) $(OBJS) -o $(MIPS32_TARGET) 

linked_list.o:linked_list.s
	$(MIPSCC) $(CFLAGS) linked_list.s

linked_list_test.o:linked_list_test.s
	$(MIPSCC) $(CFLAGS) linked_list_test.s

linked_list.s:linked_list.i
	$(MIPSCC) $(ASFLAGS) linked_list.i -o linked_list.s

linked_list_test.s:linked_list_test.i
	$(MIPSCC) $(ASFLAGS) linked_list_test.i -o linked_list_test.s

linked_list.i:linked_list.c
	$(MIPSCC) -E linked_list.c -o linked_list.i

linked_list_test.i:linked_list_test.c
	$(MIPSCC) -E linked_list_test.c -o linked_list_test.i

#.S.o:
#	$(MIPSCC) $(ASFLAGS) -o $@ -c $< 

#.c.o:
#	$(MIPSCC) $(CFLAGS) -o $@ -c $<

#$(MIPS32_TARGET): $(OBJS)
#	$(MIPSCC) $(FLAGS) -o $@ $^

clean:
	rm -rf *.o *.i *.s $(MIPS32_TARGET)
