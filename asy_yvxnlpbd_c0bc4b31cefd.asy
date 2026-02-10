unitsize(3cm);

draw(unitcircle);

draw((-2,-1)--(2,-1));
dot((0,-1),red);

draw(arc((0,-1),.2,240,-60),arrow = Arrow(6));
label("$\omega$",(0,-.8),N);

draw("$2R$",(0,-1)--(0,1),dotted);
dot((0,1));

draw(arc((0,-1),2,150,30),dotted);