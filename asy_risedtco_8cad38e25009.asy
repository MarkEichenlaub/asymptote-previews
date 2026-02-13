import graph;

real sine(real t){
return sin(3*t);
}

draw(graph(sine,-2,2),dotted);

draw((-2,0)--(2,0), Arrows(TeXHead));
label("$x$",(2,0),S);
draw((0,-1.5)--(0,1.5), Arrows(TeXHead));
label("$y$",(0,1.5),E);