draw(unitcircle);
dot((-1,0));
dot((1,0));

draw(shift(.6,.8)*rotate(30)*xscale(.6)*scale(.05)*unitcircle);

draw((.6,.8)-(.8,-.6)--(.6,.8)+(.8,-.6),dashed);

draw((-1,0)--(-.04,1.28),dotted);
draw((1,0)--(1.24,.32),dotted);

draw((-1,0)--(.6,.8)--(1,0),blue);