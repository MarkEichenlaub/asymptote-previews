unitsize(1.5cm);
draw(((-sqrt(2),sqrt(2))/2-(2,2))--(-sqrt(2),sqrt(2))/2{1,1}..{1,-1}(sqrt(2),sqrt(2) )/2--((sqrt(2),sqrt(2))/2-(-2,2)),linewidth(2pt)+blue );
draw(unitcircle);

draw((0,0)--(sqrt(2),sqrt(2))/2,dotted);
draw((0,0)--(-sqrt(2),sqrt(2))/2,dotted);
draw(arc((0,0),.2,45,135));
label("$\theta_1$",(0,.35));

draw((-sqrt(2),sqrt(2))/2-(2,2)--(-sqrt(2),sqrt(2))/2-(2.5,2.5),arrow=Arrow(6),red);
label("$F$",(-sqrt(2),sqrt(2))/2-(2.25,2.25),NW,red);

draw((sqrt(2),sqrt(2))/2-(-2,2)--(sqrt(2),sqrt(2))/2-(-3,3),arrow = Arrow(6),red);
label("$?$",(sqrt(2),sqrt(2))/2-(-2.5,2.5),NE);

//dot((-sqrt(2),sqrt(2))/2-(2,2));
//dot((-sqrt(2),sqrt(2))/2-(3,3));