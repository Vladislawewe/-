%{
#include <stdio.h>
%}

%%
[0-9]+   { printf("Число: %s\n", yytext); }
[a-zA-Z]+ { printf("Текст: %s\n", yytext); }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
