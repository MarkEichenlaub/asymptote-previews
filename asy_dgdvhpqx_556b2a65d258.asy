//TeXeR source: https://artofproblemsolving.com/texer/dgdvhpqx

import graph;

real hill(real x){
return 1-x*x;
}

draw(graph(hill,-1,1));
draw(shift((.5,.75)+.1/sqrt(2)*(1,1))*scale(.1)*unitcircle);