/*

/*

%option noyywrap

space	[ \n\t]*
word	[^\n\t]+

%{
#define YYSTYPE char *
#include "y.tab.h"
extern void yyerror(const char *);
%}

%%
{OPERATOR}      { return yytext[0]; }
{INTEGER}       { yylval = strdup(yytext); return T_IntConstant; }
{IDENTIFIER}    { yylval = strdup(yytext); return T_Identifier; }
{WHITESPACE}    { /* ignore every whitespcace */ }
\n              { cur_line++; }
.               { unrecognized_char(yytext[0]); }
%%

void yyerror(const char *msg) {
    printf("Error at line %d:\n\t%s\n", cur_line, msg);
    exit(1);
}