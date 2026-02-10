import graph;

real par(real x){
return 1 - x^2;
}

draw(graph(par,-.5,.5));

int n = 20;

for(int i = 0; i<(n+1); ++i){
real x = -.5 + i/n;
real y = par(x);
dot((x,y));
}