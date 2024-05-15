/** Taken from "The Definitive ANTLR 4 Reference" by Terence Parr */
// Derived from http://json.org
grammar Json;

//Top-level Parser Rule
json : value EOF;

//Rules
obj
   : '{' pair (',' pair)* '}'
   | '{' '}'
   ;

pair
   : STRING ':' value
   ;

arr
   : '[' value (',' value)* ']'
   | '[' ']'
   ;

value
   : STRING
   | NUMBER
   | obj
   | arr
   | 'true'
   | 'false'
   | 'null'
   ;

//Tokens
STRING : '"' (ESC | SAFECODEPOINT)* '"' ;
NUMBER : '-'? INT ('.' [0-9] +)? EXP? ;

//Fragments
fragment ESC : '\\' (["\\/bfnrt] | UNICODE) ;
fragment UNICODE : 'u' HEX HEX HEX HEX ;
fragment HEX : [0-9a-fA-F] ;
fragment SAFECODEPOINT : ~ ["\\\u0000-\u001F] ;
fragment INT : '0' | [1-9] [0-9]* ;
// no leading zeros
fragment EXP : [Ee] [+\-]? INT ;
// \- since - means "range" inside [...]
WS : [ \t\n\r] + -> skip ;