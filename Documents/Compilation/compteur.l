%{
#include <stdio.h>
size_t nb_words = 0;
%}

%%



[^ \n\t]+ {nb_words++; } 
<<EOF>>   { printf("count : %zu\n",nb_words);
		yyterminate();
		}
.|\n	  { }
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

