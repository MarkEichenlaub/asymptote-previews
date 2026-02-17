//TeXeR source: https://artofproblemsolving.com/texer/zjceswfg

import graph;

real par(real x){
return x*x;
}

real gaus(real x){
return exp(-x*x*4);
}

draw(graph(par,-1,1));
draw(graph(gaus,-1,1),blue);