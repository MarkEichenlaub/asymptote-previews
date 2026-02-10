//TeXeR source: https://artofproblemsolving.com/texer/pdoltjgi

import graph;

real y(real x){return 1-x^2;}
draw(graph(y,-1,1),dotted);
pair center = (-.5,y(-.5));
filldraw(box(center-(.1,.1),center+(.1,.1)),lightgray);

draw(shift(center)*scale(.2)*((0,0)--(1,1)), arrow = Arrow(6));