draw(unitcircle, dotted);

real dtheta = 20;
real theta1 = 90-dtheta;
real theta2 = 90+dtheta;

dot(dir(theta1));
dot(dir(theta2),blue);

real L = 0.5;

draw(shift(dir(theta1))*scale(L)*rotate(theta1)*((0,0)--(0,1)), arrow = Arrow(6));
draw(shift(dir(theta2))*scale(L)*rotate(theta2)*((0,0)--(0,1)), arrow = Arrow(6),blue);