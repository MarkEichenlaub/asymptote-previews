filldraw(unitcircle, lightgray);
filldraw(scale(.9)*unitcircle, white);

filldraw(shift(3,0)*unitcircle, lightgray);

draw("$R$",(0,0)--(1,0), dotted);
draw("$R$",(3,0)--(4,0),dotted);

draw(arc((0,0),1.2,110,70), arrow = Arrow(6));
draw(arc((3,0),1.2,110,70), arrow = Arrow(6));
label("$\omega$",(0,1.2),N);
label("$\omega$",(3,1.2),N);