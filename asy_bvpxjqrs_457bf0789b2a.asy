path ellipse = shift(1/2,1/2)*rotate(45)*yscale(1/sqrt(2))*unitcircle;
real[] t = times(ellipse,0);
real[] r = times(ellipse,1);

path ell = shift(1/2,1/2)*rotate(180)*shift(-1/2,-1/2)*subpath(ellipse,t[0],r[1]);

fill( (0,0)--(1,0)--ell--(0,1)--cycle, gray);
draw(unitcircle);
draw( shift(1/2,1/2)*rotate(45)*yscale(1/sqrt(2))*unitcircle);

dot((0,0));
label("$F_1$",(0,0),S);

dot((1,1));
label("$F_2$",(1,1),SE);

dot((0,1));
label("$N$",(0,1),NW);

dot((1,0));
label("$E$",(1,0),ESE);

dot( (1/2 + 1/sqrt(2),1/2 + 1/sqrt(2)) );
label("$A$",(1/2 + 1/sqrt(2),1/2 + 1/sqrt(2)),NE);

dot( (1/2 - 1/sqrt(2),1/2 - 1/sqrt(2)) );
label("$P$",(1/2 - 1/sqrt(2),1/2 - 1/sqrt(2)),SW);





dot( (1/2,1/2) );
label("$C$",(1/2,1/2),E);

draw((1,0)--(0,1),dotted);