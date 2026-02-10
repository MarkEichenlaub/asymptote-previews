import graph;

real pot(real x){
return -1/x^2;
}

path grav = graph(pot,.5,5);
draw(grav);
draw((-1,-1)--(2,-.25)--(5,.5),dotted);
dot((2,-.25));

draw((0,-3)--(0,3),linewidth(.5pt));
draw((-1,0)--(5,0),linewidth(.5pt));

real par(real x){
   return -.25 + .25*(x-2) - (x-2)^2*3/16;
}
path parabola = graph(par,.5,5);
draw(parabola, dashed+red);