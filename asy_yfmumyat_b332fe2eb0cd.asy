unitsize(2cm);

draw((0,0)--(4,0),linewidth(2pt));

draw(shift(2,0)*xscale(.2)*unitcircle);

dot((2,1));

real theta = 45*pi/180;

draw((2,0)--((2,0)+(.2*cos(theta),sin(theta))),dotted);

label("$r$",.5*((2,0)+((2,0)+(.2*cos(theta),sin(theta)))),NNW);