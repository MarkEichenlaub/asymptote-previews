unitsize(4cm);

real theta = 60;

real M = .25;
real m = M*(2-Cos(theta));

draw(unitcircle);
draw((0,-1)--(0,1));
draw((-1,0)--(1,0));

dot((-1,0),6+black);
label("$m$",(-1,0),W);
dot((1,0),6+black);
label("$2M$",(1,0),E);

dot(dir(180-theta),6+black);
label("$M$",dir(180-theta),NW);

draw(arc((0,0),.3,180,180-theta));
label("$\theta$",dir(180-theta/2)*.36);

draw((0,0)--dir(180-theta), dotted);
label("$r$",(.5,0),S);

//draw(shift(-1,0)*((0,0)--(0,-m)), arrow = Arrow(6),red);
//label("$m\vec{g}$",(-1,-m),S,red);

//draw(shift(dir(180-theta))*((0,0)--(0,-M)), arrow = Arrow(6),red);
//label("$M\vec{g}$",dir(180-theta)+(0,-M),E,red);

//draw(shift(1,0)*((0,0)--(0,-2*M)), arrow = Arrow(6),red);
//label("$M\vec{g}$",(1,-2*M),S,red);