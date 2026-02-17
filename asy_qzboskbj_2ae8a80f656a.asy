import graph;

pair cycl(real t){
return .5*(sin(t)+t,cos(t)+1);
}

draw(graph(cycl,-5,5),dotted);

draw((-2,0)--(2,0), Arrows(TeXHead));
label("$x$",(2,0),S);
draw((0,-1)--(0,2), Arrows(TeXHead));
label("$y$",(0,2),E);