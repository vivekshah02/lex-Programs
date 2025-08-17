%{
#include <stdio.h>
int count = 0;   /* Initialize count */
%}


digit   [0-9]
letter  [A-Za-z]

%%

{letter}({letter}|{digit})*    { count++; }

%%

int main(void) {
    yylex();
    printf("Number of identifiers = %d\n", count);
    return 0;
}
