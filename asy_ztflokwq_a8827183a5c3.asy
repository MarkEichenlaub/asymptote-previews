import graph;

real wave(real t){
return cos(20 t)*cos(t);
}

draw((0,0)--(5,0));
draw((0,0)--(0,1));

draw(graph(wave,0,5));