
run1: 1.sample sample1.source
	./$< sample1.source

1.sample: sample1.yy.cpp
	gcc -o $@ -lfl $< main.cpp

sample1.yy.cpp: sample1.l
	flex -o $@ $<

clean:
	rm *.yy.cpp *.sample