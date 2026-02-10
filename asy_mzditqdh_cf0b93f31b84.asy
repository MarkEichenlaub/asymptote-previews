draw(shift(2,2)*unitcircle);

//dot((5,0));

draw((-2,0)--(6,0),dotted);

//draw("$\vec{v}$",(5,0)--(4,0),arrow = Arrow(6));

import graph;

real trajectory(real x){
return 1/x;
}

draw(graph(trajectory,.2,7),dashed);

dot((.25,4));
draw("$v$",(.25,4)--(.125,6),arrow = Arrow(6));