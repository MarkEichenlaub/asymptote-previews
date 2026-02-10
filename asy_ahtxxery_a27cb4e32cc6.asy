unitsize(4cm);

import graph;

real cable(real x){
return x*x/4;}

draw(graph(cable, 0, 1),linewidth(2pt));
draw((0,0)--(1,0),dotted);
label("$x$",(.6,0),S);

draw((1,0)--(1,cable(1)),dotted);
label("$y$",(1,.1),E);

draw("$mg$",(.5,cable(.5))--(.5,-.45), arrow = Arrow(6), red);

real T_x = .6;

draw("$T_{L}$",(0,0)--(-T_x,0), arrow = Arrow(6), red);

draw(shift(1,cable(1))*((0,0)--(T_x,.5*T_x)), arrow = Arrow(6) , red);
label("$T_R$",shift(1,cable(1))*(T_x,.5*T_x),NE,red);

draw(shift(1,cable(1))*((0,0)--(T_x,0)), red+dashed);
draw(shift(1,cable(1))*((T_x,0)--(T_x,.5*T_x)), red+dashed);
label("$T_{R;x}$", shift(1,cable(1))*(T_x/2,0),S,red);
label("$T_{R;y}$", shift(1,cable(1))*(T_x,T_x/4),E,red);