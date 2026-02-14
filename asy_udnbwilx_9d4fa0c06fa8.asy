draw((-1,0)--(2,0),linewidth(2pt));
draw((0,-1)--(0,1),linewidth(2pt));

real theta = 50*pi/180;

dot((cos(theta),sin(theta)));

draw(arc((0,0),.3,0,50));
label("$\theta$",(.35,.15));

draw((0,0)--(cos(theta),sin(theta)));

label("$e^{i\theta}$",(cos(theta),sin(theta)),E);

//label("real axis",(1,0),S);
label("imaginary axis",(0,1),N);

draw((0,0)--(cos(theta),-sin(theta)));
dot((cos(theta),-sin(theta)));
label("$e^{-i\theta}$",(cos(theta),-sin(theta)),E);

draw((cos(theta),sin(theta))--(2cos(theta),0));
draw((cos(theta),-sin(theta))--(2cos(theta),0));
dot((2cos(theta),0));
label("$e^{i\theta} + e^{-i\theta}$",(2cos(theta),0),NE);