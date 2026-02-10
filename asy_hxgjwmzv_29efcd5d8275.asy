import graph;

real pot(real x){
return -1/x^2;
}

path grav = graph(pot,.5,5);
draw(grav);
draw((-1,-1)--(2,-.25)--(5,.5),dotted);
dot((2,-.25));

dot((2.1,-.227),yellow);
dot((.5,-4),red);
draw((-1,-1)--(2,-.25)--(5,.5),dotted);
draw((0,-3)--(0,3),linewidth(.5pt));
draw((-1,0)--(5,0),linewidth(.5pt));