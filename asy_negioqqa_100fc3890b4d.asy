unitsize(3cm);

import graph;

real el(real x){
    return sqrt(1 - 100*x*x)+1;
}

path ellip = graph(el,0,-.1);

fill((0,0)--(0,2)..ellip--cycle,gray);
draw(shift(0,1)*xscale(0.1)*unitcircle,dashed);
draw(unitcircle,blue);
//draw(ellip,red);