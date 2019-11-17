%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(const char*);
#define YYSTYPE char *
%}

%token X Y

%%

S	: 
	_ { printf("---"); }
|	S _ { printf("---"); }
;

_	:
	X Y
;

%%

int main() {
	return yyparse();
}