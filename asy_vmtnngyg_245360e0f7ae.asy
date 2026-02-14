draw(unitcircle);
draw("$\ell_0$",(0,-1)--(5,-1));
dot((5,-1));

draw((5,-1)--(5,1),arrow = Arrow(6));

draw("$R$",(0,0)--(0,-1),dotted);


draw("$x$",(0,0)--(5,-1),dotted);

draw((5,-1)--(5.5,1.5),dotted);

draw(shift(5,-1)*((5/13,25/13)--(0,2)),arrow = Arrow(6),red);