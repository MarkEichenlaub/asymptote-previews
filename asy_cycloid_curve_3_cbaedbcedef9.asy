import graph;

pair cycloid(real t){
return (t- sin(t), 1-cos(t));
}

draw(graph(cycloid,-pi,3*pi));

draw((-4,0)--(9,0));

draw(shift(pi,-2)*scale(4)*unitcircle,dotted);