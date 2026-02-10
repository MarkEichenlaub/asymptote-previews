//TeXeR source: https://artofproblemsolving.com/texer/etakukjo

import graph;
real coil(real x){
    return x^2/4;
}
path wire = graph(coil,-3,3);
draw(wire);
dot((2,1));
draw((2,1)--(2,.25),arrow = Arrow(6));
label("$mg$",(2,.5),E);
draw((2,1)--(1,2),arrow = Arrow(6));
label("$N$",(1.5,1.5),NE);