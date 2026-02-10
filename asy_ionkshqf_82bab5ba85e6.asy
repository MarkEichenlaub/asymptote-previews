//TeXeR source: https://artofproblemsolving.com/texer/ionkshqf

import graph;

real y(real x){return - x*x;}
draw(graph(y,-1,1), dotted);
dot((-.5,-.25));
draw(shift(-.5,-.25)*scale(.5)*((0,0)--(.5,.5)), arrow = Arrow(6));
dot((.5,-.25));
draw(shift(.5,-.25)*scale(.5)*((0,0)--(.5,-.5)), arrow = Arrow(6));

draw((-1,-.25)--(1,-.25),red+dashed);