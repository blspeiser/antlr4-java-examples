// Mathematical Expression Grammar. 
// Baruch Speiser, Cambium. 
grammar Expression;

expression : binaryExpression EOF;
  
binaryExpression
  : binaryExpression POWER binaryExpression
  | binaryExpression (MULTIPLY | DIVIDE)  binaryExpression
  | binaryExpression (PLUS | MINUS) binaryExpression
  | unaryExpression
  ;

unaryExpression
  : LPAREN binaryExpression RPAREN
  | function   
  | (PLUS|MINUS) unaryExpression
  | unaryExpression FACTORIAL
  | atomic
  ; 

function
  : (SIN|COS|TAN|SEC|CSC|COT|LOG|LN|LG) (POWER MINUS '1')? LPAREN binaryExpression RPAREN
  ;  

atomic
  : NUMBER
  | PI
  | E
  ;

PI: 'PI' | 'Pi' | 'pi';
E: 'E' | 'e';

NUMBER 
  : DIGIT+
  | DIGIT* DOT DIGIT+
  ; 

SIN : 'sin' | 'SIN';
COS : 'cos' | 'COS';
TAN : 'tan' | 'TAN';
SEC : 'sec' | 'SEC';
CSC : 'csc' | 'CSC';
COT : 'cot' | 'COT';
LOG : 'log' | 'LOG';
LN  : 'ln'  | 'LN';
LG  : 'lg'  | 'LG';

LPAREN : '(';
RPAREN : ')';
PLUS : '+';
MINUS : '-';
MULTIPLY : '*';
DIVIDE : '/';
POWER: '^';
FACTORIAL : '!';

fragment DOT : '.';
fragment DIGIT : ('0'..'9');

WS : [ \t\n\r] + -> skip ;