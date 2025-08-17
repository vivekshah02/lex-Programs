%{#include<stdio.h>
int c = 0, m=0;
%}
%%
"//"[^\n]*        { c++; printf("Single line comment\n"); }
"/*"([^*]*|\*+[^*/])*"\*/"  { m++; printf("Multiline comment\n"); }
.|\n              /* ignore other characters */
%%
int main()
{
yylex();
printf("c=%d, m=%d", c, m);
return 0;
}
