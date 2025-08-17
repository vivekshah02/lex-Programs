%{
#include<stdio.h>
int nword=0;
int nline=0;
int nchar=0;
%}

%%
\n {nline++; nchar++;}
[^ \t\n]+ {nword++; nchar += yyleng;}
. {nchar++;} 
%%

int main(){
yyin = fopen("input.txt","r");
yyout = fopen("output.txt", "w");

yylex();

fprintf(yyout, "word: %d\t line: %d\t char: %d", nword, nline, nchar);

fclose(yyin);
fclose(yyout);

}
