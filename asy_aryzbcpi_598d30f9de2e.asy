import graph;

real y(real x){
return x^2+.1;
}

draw((-1,1.1)--(-1,0)--(1,0)--(1,1.1));

draw(graph(y,-1,1));

dot((.4,y(.4)),black+5);

draw(shift((.4,y(.4)))*((0,0)--(0,-.5)), arrow = Arrow(6),red);
draw(shift((.4,y(.4)))*((0,0)--(.3,0)), arrow = Arrow(6),red);
label("$\vec{g}$",(.4,y(.4)-.5),S,red);
label("$\vec{a}$",(.4+.3,y(.4)),E,red);