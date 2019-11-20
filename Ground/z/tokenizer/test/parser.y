%{
void yyerror(const char *);
extern "C" int yylex();
extern "C" FILE *yyin;
%}

%parse-param { int *space_count }
%parse-param { int *word_count }

%token T_SPACE T_WORD

%%

%%