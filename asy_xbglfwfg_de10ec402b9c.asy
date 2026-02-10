import graph;

real y(real x){
return x^2+.1;
}

draw((-1,1.1)--(-1,0)--(1,0)--(1,1.1));

draw(graph(y,-1,1));

dot((.4,y(.4)),black+5);