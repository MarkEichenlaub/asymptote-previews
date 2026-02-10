unitsize(4cm);

real theta = 90;

draw(unitcircle);
draw((0,-1)--(0,1));
draw((-1,0)--(1,0));

dot((-1,0),6+black);
label("$m$",(-1,0),W);
dot((1,0),6+black);
label("$2M$",(1,0),E);

dot(dir(180-theta),6+black);
label("$M$",dir(180-theta),NW);

//draw(arc((0,0),.3,180,180-theta));
//label("$\theta$",dir(180-theta/2)*.36);

draw((0,0)--dir(180-theta), dotted);
label("$R$",(.5,0),S);

//draw(shift(-1,0)*((0,0)--(0,-.5)), arrow = Arrow(6),red);
//label("$m\vec{g}$",(-1,-.5),S,red);

//draw(shift(0,1)*((0,0)--(0,-.25)), arrow = Arrow(6),red);
//label("$M\vec{g}$",(0,.75),E,red);

//draw(shift(1,0)*((0,0)--(0,-.5)), arrow = Arrow(6),red);
//label("$M\vec{g}$",(1,-.5),S,red);