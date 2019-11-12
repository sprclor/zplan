%{
#define YYSTYPE double
#include <math.h>
#include <ctype.h>
#include <stdio.h>
%}

%token NUM

%%

input: /* empty */
	| input line
;

line: '\n'
	| exp '\n' { printf( "\t%.10g\n", $1 ); }
;

exp:  NUM { $$ = $1; }
	| exp exp '+' { $$ = $1 + $2; }
	| exp exp '-' { $$ = $1 - $2; }
	| exp exp '*' { $$ = $1 * $2; }
	| exp exp '/' { $$ = $1 / $2; }
	/* Exponentiation */
	| exp exp '^' { $$ = pow( $1, $2 ); }
	/* Unary minus */
	| exp 'n' { $$ = -$1; }
;

%%

yyerror (s)  /* Called by yyparse on error */
     char *s;
{
  printf ("%s\n", s);
}

main ()
{
  yyparse ();
}