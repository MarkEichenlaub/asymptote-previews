unitsize(1cm);

import graph;

real sigma = 3;
real epsilon = 5;

real lennard(real x){
    return 4*epsilon*((sigma/x)^12 - (sigma/x)^6);
}

path lj = graph( lennard, 2.95, 8);

draw(lj);

draw((0,-3)--(0,3),linewidth(.2pt));
draw((-1,0)--(8,0),linewidth(.2pt));