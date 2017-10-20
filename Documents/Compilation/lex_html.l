%{
#include <stdio.h>
%}

%%


if|for {printf("
/*([^*]*[*]+[^x/])*[^*]*[*]+/ {printf("un commentaire");}



%%
int main(int argc, char* argv[]) {
	if (argc != 2)
	{
		fprintf(stderr, "usage: %s file_name \n", argv[0]);
		exit(1);
	}

	yyin = fopen(argv[1],"r");
	if(yyin  == NULL) {
		fprintf(stderr,"cannot open file %s\n",argv[1]);
		exit(2);
	}
	yylex();

return 0;
}

