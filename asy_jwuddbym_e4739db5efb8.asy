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

//dot((.3,.3));

real constant = 0.0775596;
real adiabat(real x){
return constant / x^(5/3);
}

draw(graph(adiabat,.3,.8));