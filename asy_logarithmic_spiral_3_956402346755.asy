import graph;

pair curve(real t){

real r = exp(t);
real theta = t;

return (r*cos(theta),r*sin(theta));
}

dot((0,0));

draw(graph(curve,.7,pi));