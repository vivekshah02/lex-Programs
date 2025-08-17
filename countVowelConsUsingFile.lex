%{
#include<stdio.h>
int vowel=0;
int cons=0;
%}

%%
[aeiouAEIOU] {vowel++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {cons++;}
%%

int main(){
yyin=fopen("input1.txt","r");
yyout=fopen("output1.txt", "w");

yylex();
fprintf(yyout, "vowel: %d\t consonant: %d", vowel, cons);
fclose(yyin);
fclose(yyout);
}
