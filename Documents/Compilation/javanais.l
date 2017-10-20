%{
#include <stdio.h>
%}

%%


[a e i u y o]+ {printf("av%s", yytext);} 

%%
int main() {
	printf("hello \n");
	yylex();
return 0;
}

