unitsize(4cm);

import graph;

real T = .09;

real isotherm(real x){
return T/x;
}

path expand1= graph(isotherm, .3, .8);

draw(expand1);

draw((0,0)--(1,0));
draw((0,0)--(0,1));
label("$V$",(1,0),S);
label("$P$",(0,1),W);

for(int i = 1; i<10; ++i){
T = .09/3 * i;
draw(graph(isotherm,.1+.015*i,1),dashed);
}

//dot((.3,.3));