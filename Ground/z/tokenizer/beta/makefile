out = z
scanner = scanner.l
parser = parser.y
out_files = lex.yy.c y.tab.c y.tab.h y.output $(out)

cc = gcc
objects = lex.yy.o y.tab.o

source = source.c
test_out = $(basename $(source)).zo

.PHONY: build test clean

build: $(objects)
	$(cc) -o $(out) $(objects)

test: $(out)
	./$(out) -o $(test_out) $(source)

clean:
	rm -f *.o $(out_files)

lex.yy.c: $(scanner) y.tab.c
	flex $<

y.tab.c: $(parser)
	bison -vdty $<