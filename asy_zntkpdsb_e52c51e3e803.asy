//TeXeR source: https://artofproblemsolving.com/texer/zntkpdsb

import graph;

real hill(real x){
return 1-x*x;
}

draw(graph(hill,-1,1));
draw(shift(0,1.1)*scale(.1)*unitcircle);