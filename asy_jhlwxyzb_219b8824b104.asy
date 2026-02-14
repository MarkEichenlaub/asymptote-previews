import graph;

real f1(real x){
return sin(x);
}

draw((-1,0)--(0,0));
draw(graph(f1,0,pi));
draw((pi,0)--(3*pi,0));
draw(graph(f1,3*pi,4*pi));
draw((4*pi,0)--(14,0));

draw((pi/2,1.2)--(pi/2+2,1.2),arrow = Arrow(6));

draw((3.5*pi,-1.2)--(3.5*pi-2,-1.2),arrow = Arrow(6));