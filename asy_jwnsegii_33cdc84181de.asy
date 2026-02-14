unitsize(4cm);

draw(unitcircle);

dot((0,0));

real theta = 60*pi/180;

dot( (cos(theta),sin(theta)) );

draw((0,0)--(cos(theta),0));
label("$x$",(1/2*cos(theta),0),S);

draw((cos(theta),0)--(cos(theta),sin(theta)));
label("$\sqrt{R^2 - x^2}$",(cos(theta),sin(theta)/2),E);

draw((0,0)--(cos(theta),sin(theta)));
label("$R$",1/2*(cos(theta),sin(theta)),NW);

real theta2 = 50*pi/180;

dot((cos(theta2),sin(theta2)));

draw((cos(theta),sin(theta2))--(cos(theta2),sin(theta2)),dotted);

draw(arc((0,0),.1,0,theta*180/pi));

draw(arc((cos(theta),sin(theta)),.06,-90,-90+theta*180/pi));

label("$\mathrm{d}x$",(1/2*(cos(theta) + cos(theta2)),sin(theta2)),S);

label("$\mathrm{d}h$",1/2*((cos(theta),sin(theta)) + (cos(theta2),sin(theta2))), NE);