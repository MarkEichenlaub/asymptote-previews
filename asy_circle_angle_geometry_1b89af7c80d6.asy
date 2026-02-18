unitsize(3cm);

draw(unitcircle);

draw((-2,-1)--(2,-1));
dot((0,-1),red);

draw(arc((0,-1),.2,240,-60),arrow = Arrow(6));
label("$\omega$",(0,-.8),N);

real theta = 200;
pair point = (Cos(theta),Sin(theta));
dot(point,blue);

draw((0,-1)--point,dotted);

draw("$\theta/2$",arc((0,0),.3,270/2 + theta/2,theta));

draw((0,0)--(0,-1),dotted);
draw(point--(0,0),dotted);

pair mid = point/2 + (0,-.5);

draw((0,0)--mid,dotted);

label("$R$",(-.5,-.1));

label("$d/2$",(mid + point)/2,SW);