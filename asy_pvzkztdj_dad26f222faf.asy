draw((0,0)--(1,0));
draw((0,0)--(0,1));

import graph;

real x(real t){
return .3*sin(3*2*pi*t) + .5;
}

draw(graph(x,0,1));

label("$t$",(1,0),S);
label("$x$",(0,1),W);