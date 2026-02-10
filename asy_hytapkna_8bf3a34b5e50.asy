size(8cm);

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

real s = .8;
real y = .26;

draw((.4-2*y/s,-y)--(.4+2*y/s,3*y), dashed);

draw(arc((.4-y/s,0),.2,0,atan(.8)*180/pi));
label("$\theta$",(.4-y/s,0)+dir(atan(.8)*180/pi/2)*.26);