unitsize(4cm);
import graph;

real eps = 0.08;
draw((0,0)--(1 + eps,0), EndArrow(TeXHead));
draw((0,0)--(0,1 + eps), EndArrow(TeXHead));
label("$t$",(1 + eps,0),S);
label("$y$",(0,1 + eps),W);

real par(real t){
return 1-4*(.5-t)^2;
}

draw(graph(par,0,1));