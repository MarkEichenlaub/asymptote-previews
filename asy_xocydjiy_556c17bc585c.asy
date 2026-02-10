//TeXeR source: https://artofproblemsolving.com/texer/xocydjiy

import graph;

real p1(real x){return -.5*x*(x-1.8);}
real p2(real x){return -2*x*(x-1);}
real p3(real x){return -60*x*(x-.2);}

draw((0,0)--(2,0));
draw(graph(p1, 0, 1.8),deepblue);
draw(graph(p2, 0, 1),deepgreen);
draw(graph(p3, 0, .2),deepred);
label("A",(.1,.7),deepred);
label("B",(.5,.6),deepgreen);
label("C",(.9,.5),deepblue);