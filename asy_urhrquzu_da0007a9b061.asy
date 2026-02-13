import graph;

pair liss(real t){
return (sin(2*t),cos(3*t));
}

draw(graph(liss,-5,5),dotted);

draw((-1.5, 0)--(1.5,0), Arrows(TeXHead));
label("$x$",(1.5,0),S);
draw((0,-1.5)--(0,1.5), Arrows(TeXHead));
label("$y$",(0,1.5),E);