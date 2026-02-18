draw((0,1)--(0,3));
draw((0,0)--(0,-2));

import graph;

real lambda = 1;
real mysin(real x){
return sin(2*pi*x/lambda);
}

draw(shift(0,.5)*graph(mysin,-4,-1));
draw((-1,.5)--(-.5,.5),arrow = Arrow(6));

label("$y$",(0,2),E);
label("$x$",(1,.5),S);

draw((-4,.5)--(1,.5),dotted);