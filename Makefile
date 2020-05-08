vpath %.c src
vpath %.h include

%.o: %.c
	gcc -c $< -I./include
%: %.o
	gcc -o $@ $^

hello: hello.o print.o
hello.o: hello.c
print.o: print.c
