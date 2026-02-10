unitsize(6cm);

import graph;

real T = .2;

real isotherm(real x){
return T/x;
}

real constant = 0.125992;
real adiabat(real x){
return constant / x^(5/3);
}

real T = .2;
draw(graph(isotherm,.2,.5));
//draw(graph(isotherm,.17,1),dotted);
//label("$T_H$",(1,.2),N);
real constant = 0.125992;
draw(graph(adiabat,.5,.8));
//dot((.5,.4));
real T = .146201;

real isotherm2(real x){
return T/x;
}

draw(graph(isotherm2,.8, .32));
real constant = .068399;
//draw(graph(isotherm2,1,.17),dotted);
//label("$T_C$",(1,.15),S);

real adiabat2(real x){
return constant / x^(5/3);
}
draw(graph(adiabat2,.2, .32));

draw((0,0)--(1,0));
draw((0,0)--(0,1));

label("1",(.38,.6));
label("2",(.6,.35));
label("3",(.45,.27));
label("4",(.25,.58));