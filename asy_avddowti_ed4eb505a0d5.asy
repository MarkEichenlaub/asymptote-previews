unitsize(3cm);

draw((0,0)--(4,0),linewidth(2pt));
filldraw(box((0,0),(.25,2)),lightgray);

draw(shift(.35,2.1)*scale(.05)*unitcircle);

import graph;

real y(real x){
return -x*x;
}

draw(shift(.35,2.05)*yscale(.753)*graph(y,0,1.65),dashed+deepred);
label("softer throw",(2,0),S,deepred);
draw(shift(.35,2.05)*xscale(2)*yscale(.753)*graph(y,0,1.65),dashed+deepred);
label("harder throw",(3.6,0),S,deepred);