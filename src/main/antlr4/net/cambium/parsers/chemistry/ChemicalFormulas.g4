grammar ChemicalFormulas;

expression: (formula | molecules) EOF;

formula:  mixture TO result; 

mixture: molecules (PLUS molecules)+;
result: molecules (PLUS molecules)*;  

molecules: quantity? molecule;
molecule: (atoms | subgroup)+;
subgroup: LPAREN atoms+ RPAREN NUMBER?;
atoms: atom NUMBER?;

quantity : (NUMBER | SOME);

atom: H
    | HE
    | LI
    | BE
    | B
    | C
    | N
    | O
    | F
    | NE
    | NA
    | MG
    | AL
    | SI
    | P
    | S
    | CL
    | AR
    | K
    | CA
    | SC
    | TI
    | V
    | CR
    | MN
    | FE
    | CO
    | NI
    | CU
    | ZN
    | GA
    | GE
    | AS
    | SE
    | BR
    | KR
    | RB
    | SR
    | Y
    | ZR
    | NB
    | MO
    | TC
    | RU
    | RH
    | PD
    | AG
    | CD
    | IN
    | SN
    | SB
    | TE
    | I
    | XE
    | CS
    | BA
    | LA
    | CE
    | PR
    | ND
    | PM
    | SM
    | EU
    | GD
    | TB
    | DY
    | HO
    | ER
    | TM
    | YB
    | LU
    | HF
    | TA
    | W
    | RE
    | OS
    | IR
    | PT
    | AU
    | HG
    | TL
    | PB
    | BI
    | PO
    | AT
    | RN
    | FR
    | RA
    | AC
    | TH
    | PA
    | U
    | NP
    | PU
    | AM
    | CM
    | BK
    | CF
    | ES
    | FM
    | MD
    | NO
    | LR
    | RF
    | DB
    | SG
    | BH
    | HS
    | MT
    | DS
    | RG
    | CN
    | NH
    | FL
    | MC
    | LV
    | TS
    | OG;

H : 'H';
HE : 'He';
LI : 'Li';
BE : 'Be';
B : 'B';
C : 'C';
N : 'N';
O : 'O';
F : 'F';
NE : 'Ne';
NA : 'Na';
MG : 'Mg';
AL : 'Al';
SI : 'Si';
P : 'P';
S : 'S';
CL : 'Cl';
AR : 'Ar';
K : 'K';
CA : 'Ca';
SC : 'Sc';
TI : 'Ti';
V : 'V';
CR : 'Cr';
MN : 'Mn';
FE : 'Fe';
CO : 'Co';
NI : 'Ni';
CU : 'Cu';
ZN : 'Zn';
GA : 'Ga';
GE : 'Ge';
AS : 'As';
SE : 'Se';
BR : 'Br';
KR : 'Kr';
RB : 'Rb';
SR : 'Sr';
Y : 'Y';
ZR : 'Zr';
NB : 'Nb';
MO : 'Mo';
TC : 'Tc';
RU : 'Ru';
RH : 'Rh';
PD : 'Pd';
AG : 'Ag';
CD : 'Cd';
IN : 'In';
SN : 'Sn';
SB : 'Sb';
TE : 'Te';
I : 'I';
XE : 'Xe';
CS : 'Cs';
BA : 'Ba';
LA : 'La';
CE : 'Ce';
PR : 'Pr';
ND : 'Nd';
PM : 'Pm';
SM : 'Sm';
EU : 'Eu';
GD : 'Gd';
TB : 'Tb';
DY : 'Dy';
HO : 'Ho';
ER : 'Er';
TM : 'Tm';
YB : 'Yb';
LU : 'Lu';
HF : 'Hf';
TA : 'Ta';
W : 'W';
RE : 'Re';
OS : 'Os';
IR : 'Ir';
PT : 'Pt';
AU : 'Au';
HG : 'Hg';
TL : 'Tl';
PB : 'Pb';
BI : 'Bi';
PO : 'Po';
AT : 'At';
RN : 'Rn';
FR : 'Fr';
RA : 'Ra';
AC : 'Ac';
TH : 'Th';
PA : 'Pa';
U : 'U';
NP : 'Np';
PU : 'Pu';
AM : 'Am';
CM : 'Cm';
BK : 'Bk';
CF : 'Cf';
ES : 'Es';
FM : 'Fm';
MD : 'Md';
NO : 'No';
LR : 'Lr';
RF : 'Rf';
DB : 'Db';
SG : 'Sg';
BH : 'Bh';
HS : 'Hs';
MT : 'Mt';
DS : 'Ds';
RG : 'Rg';
CN : 'Cn';
NH : 'Nh';
FL : 'Fl';
MC : 'Mc';
LV : 'Lv';
TS : 'Ts';
OG : 'Og';

LPAREN : '(';
RPAREN : ')';
PLUS: '+';
TO: '->';
SOME: '*';
NUMBER : NONZERO DIGIT*;

fragment DIGIT : '0'..'9';
fragment NONZERO : '1'..'9';

//Ignore whitespace:
WS : [ \r\n\t]+ -> skip;