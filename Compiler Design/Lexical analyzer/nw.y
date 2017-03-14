%{
#include <stdio.h>
#include <stdlib.h>
%}

%token KEY ID INT FLOAT EXPO CMT2 STR RELOP ASSIGNOP DOTDOT ADDOP MULOP


%%
	s: KEY {printf(" Key \n");}
	 | ID {printf(" Id \n");}
	 | INT {printf(" Int \n");}
	 | FLOAT {printf(" float \n");}
	 | EXPO {printf(" Expo \n");}
	 | CMT2{printf(" Comment \n");}
	 | RELOP {printf(" RELOP \n");}
	 | ASSIGNOP {printf(" ASSIGNOP \n");}
	 | DOTDOT {printf(" DOTDOT \n");}
	 | ADDOP {printf(" ADDOP \n");}
	 | MULOP {printf(" MULOP \n");}
	 | STR {printf(" STR \n");}

	 |s KEY {printf(" Key \n");}
	 |s ID {printf(" Id \n");}
	 |s INT {printf(" Int \n");}
	 |s FLOAT {printf(" float \n");}
	 |s EXPO {printf(" Expo \n");}
	 |s CMT2{printf(" Comment \n");}
	 |s RELOP {printf(" RELOP \n");}
	 |s ASSIGNOP {printf(" ASSIGNOP \n");}
	 |s DOTDOT {printf(" DOTDOT \n");}
	 |s ADDOP {printf(" ADDOP \n");}
	 |s MULOP {printf(" MULOP \n");}
	 |s STR {printf(" STR \n");}

%%