draw(unitcircle);
draw(shift(5,0)*unitcircle);

draw("$v$",(0,0)--(.75,0), arrow = Arrow(6),red);

draw(arc((5,0),1.2,110,70), arrow = Arrow(6),red);
label("$\omega$",(5,1.2),N,red);
draw((5,-1)--(4.25,-1), arrow = Arrow(6),red);
label("$v$",(4.725,-1),S, red);

draw((2.2,0)--(2.8,0));
draw((2.5,-.3)--(2.5,.3));

label("translation",(0,-2));
label("rotation",(5,-2));