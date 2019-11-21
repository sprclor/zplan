#include <stdio.h>

using namespace std;

extern "C" int yylex();
extern "C" FILE *yyin;
extern "C" int num_lines;
extern "C" int num_chars;

int main(int argc, char **argv) {
	++argv, --argc;
	if ( argc > 0) {
		yyin = fopen( argv[0], "r" );
	} else {
		yyin = stdin;
	}
	printf( "# of lines = %d, # of chars = %d\n", num_lines, num_chars );
	yylex();
}