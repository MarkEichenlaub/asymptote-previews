real semi_minor = 1;
real semi_major = 1.2;
real f = sqrt(semi_major^2 - semi_minor^2);

draw(xscale(semi_major)*unitcircle);

dot((-f,0));

dot("Earth",(0,-5));

real v = 3;

draw((-semi_major,0)--(-semi_major,-v), arrow = Arrow(6));

draw((semi_major,0)--(semi_major, v*(semi_major -f )/(semi_major+f)),arrow = Arrow(6));