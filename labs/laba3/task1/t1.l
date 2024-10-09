%{
#include <stdio.h>
%}

%%
[0-9]+  {printf("number/n");}
[a-zA-Zа-яА-Я]+ {printf("word/n");}

%%
int yywrap() {return 1;}
