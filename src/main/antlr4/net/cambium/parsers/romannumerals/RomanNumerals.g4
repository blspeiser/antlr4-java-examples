grammar RomanNumerals;

//Top-level parse rule:
expression : number EOF;

//Rules:
number : 
  | thousands hundreds? tens? ones? 
  | hundreds tens? ones?
  | tens ones?
  | ones
  ;  

thousands
   : M+ 
   ;

hundreds
   : C M 
   | C D 
   | D C C C  
   | D C C 
   | D C 
   | D 
   | C C C 
   | C C 
   | C 
   ;

tens
   : X C 
   | X L 
   | L X X X 
   | L X X 
   | L X 
   | L 
   | X X X
   | X X 
   | X  
   ;

ones
   : I X
   | I V
   | V I I I
   | V I I
   | V I
   | V
   | I I I
   | I I
   | I
   ;

//Tokens:
M : 'M';
D : 'D';
C : 'C';
L : 'L';
X : 'X';
V : 'V';
I : 'I';

//Ignore whitespace:
WS : [ \r\n\t]+ -> skip;