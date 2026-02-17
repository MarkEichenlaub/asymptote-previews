real a = 5;
real b = 4;
real c = (a^2 - b^2)^.5;

draw(ellipse((0,0),5,4));
dot((c,0));
label("sun",(c,0),S);

real xp = 2;
real yp = sqrt(1 - xp^2/a^2)*b;

dot((xp,yp));
label("planet",(xp,yp),NE);

real cirxp = b/a*xp;
real s = cirxp/yp*b/a;

draw(shift(xp,yp)*scale(2)*((0,0)--(-1,s)), arrow = Arrow(6), deepred);