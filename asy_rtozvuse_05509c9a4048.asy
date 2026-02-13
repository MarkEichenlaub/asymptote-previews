import graph;

real par1(real t){
return -t*t+.25;
}

real par2(real t){
return -t*t + .134/2;
}

draw(graph(par1,-.5,.5));
draw(shift(-.25,0)*graph(par2,-.25,.25));
draw(shift(.25,0)*graph(par2,-.25,.25));
draw((-.6,0)--(.6,0),linewidth(2pt));