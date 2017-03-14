%{
#include "y.tab.h"  // to get the token types that we return
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int w=0;
%}

letter [a-zA-Z]
digit [0-9]
keyword "program"|"if"|"not"|"end"|"begin"|"else"|"then"|"do"|"while"|"function"|"Procedure"|"integer"|"real"|"var"|"oh"|"array"|"write"



%%
[ \t]+ 

{keyword} {printf("%s ",yytext);return KEY;}
[\n] {w++;}

"="|"<>"|"<="|"<"|">="|">" {printf("%s ",yytext);return RELOP;}
":=" {printf("%s ",yytext);return ASSIGNOP;}
"["|"]"|"]"|"("|")"|"." {printf("%s ",yytext);return DOTDOT;}
"+"|"-" {printf("%s ",yytext);return ADDOP;}
"*"|"/" {printf("%s ",yytext);return MULOP;}




{digit}+ {printf("%s ",yytext);return INT;}
{digit}*"."{digit}+	{printf("%s ",yytext);return FLOAT;}
{digit}+"."{digit}+("E"("+"|"-")?{digit}+)?  {printf("%s ",yytext);return EXPO;}


"//"((" ")|{letter}|{digit})*  {printf("%s ",yytext);return CMT2;} 

({letter}|"_")({letter}|"_"|{digit})* {printf("%s ",yytext);return ID;}



	
	. ;

%%

int main(int argc, char *argv[]) {
  FILE *myfile = fopen("input.txt", "r");
         yyin=myfile;
	
            do{
           yyparse();

           }while(!eof(yyin));
          printf("Toltal number of line: %d\n",w);
}

int yywrap(void)
{
   return 1;
}

int yyerror(void)
{
    printf("Error\n");
    exit(1);
}