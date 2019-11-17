%{
#define YYSTYPE char *
#include "y.tab.h"
void yyerror(const char *msg);
%}

%option noyywrap

A		(a+)
B		([^a]+)

%%

{A}		{ return X; }
{B}		{ return Y; }

%%

void yyerror(const char *msg) {
	printf("Error: xxx----");
	exit(1);
}