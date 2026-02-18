draw(unitcircle);

draw((-2,-1)--(2,-1));
dot((0,-1),red);

draw(arc((0,-1),.2,240,-60),arrow = Arrow(6));
label("$\omega$",(0,-.8),N);

real theta = 200;
pair point = (Cos(theta),Sin(theta));
dot(point,blue);