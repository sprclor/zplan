%{
#define YYSTYPE double
#include <math.h>
#include <ctype.h>
#include <stdio.h>

int yylex (void);
void yyerror (char const *s);

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
	| exp exp '+' { $$ = $1 + $2; printf("%d, %d", $1, *$2); }
	| exp exp '-' { $$ = $1 - $2; }
	| exp exp '*' { $$ = $1 * $2; }
	| exp exp '/' { $$ = $1 / $2; }
	/* Exponentiation */
	| exp exp '^' { $$ = pow( $1, $2 ); }
	/* Unary minus */
	| exp 'n' { $$ = -$1; }
;

%%

int yylex (void) {
  int c;

  /* Skip white space.  */
  /* 处理空白. */
  while ((c = getchar ()) == ' ' || c == '/t')
    ;
  /* Process numbers.  */
  /* 处理数字 */
  if (c == '.' || isdigit (c))
    {
      ungetc (c, stdin);
      scanf ("%lf", &yylval);
      return NUM;
    }
  /* Return end-of-input.  */
  /* 返回输入结束 */
  if (c == EOF)
    return 0;
  /* Return a single char.  */
  /* 返回一个单一字符 */
  return c;
}

void yyerror (char const *s) {
  fprintf (stderr, "%s/n", s);
}

int main (void) {
  return yyparse ();
}