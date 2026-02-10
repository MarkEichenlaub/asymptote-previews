unitsize(4cm);

import graph;

real cable(real x){
return x*x/4;}

draw(graph(cable, 0, 1),linewidth(2pt));
draw((0,0)--(1,0),dotted);
label("$x$",(.5,0),S);

draw((1,0)--(1,cable(1)),dotted);
label("$y$",(1,.1),E);