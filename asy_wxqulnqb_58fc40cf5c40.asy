unitsize(1.5cm);

import graph;

real osc(real t){
return sin(t);
}

draw(graph(osc,0,2*pi),blue);
draw((0,0)--(2*pi,0));
draw((0,-1)--(0,1));

label("$x$",(0,1),W);
label("$t$",(2*pi,0),S);