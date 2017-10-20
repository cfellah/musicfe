%{
#include <stdio.h>
%}

%%


[0-9]+ {int i = atoi(yytext);  printf("%d", i+1);} 
[0-9]+a {int i = atoi(yytext);  printf("%d", i*2);} 
%%
int main() {
	printf("hello, Lex\n");
	yylex();
return 0;
}

