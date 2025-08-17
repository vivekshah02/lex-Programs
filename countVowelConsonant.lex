%{
#include <stdio.h>
int vowels = 0, consonants = 0;
%}

%%

[AEIOUaeiou]      { vowels++; }
[B-DF-HJ-NP-TV-Zb-df-hj-np-tv-z] { consonants++; }
.|\n              { /* ignore other chars */ }

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    yylex();
    printf("Vowels: %d\nConsonants: %d\n", vowels, consonants);
    return 0;
}
