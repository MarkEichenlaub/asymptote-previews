unitsize(3cm);
real r1 = 1;
real r2 = 1.2;
real l = 1;

fill((-r1,-l)--(-r1,0)--arc((0,0),r1,180,90)--(0,r1)--(l,r1)--(l,r2)--(0,r2)--arc((0,0),r2,90,180)--(-r2,0)--(-r2,-1)--cycle,cyan);

draw((-r1,-l)--(-r1,0)--arc((0,0),r1,180,90)--(0,r1)--(l,r1));
draw((-r2,-1)--(-r2,0)--arc((0,0),r2,180,90)--(0,r2)--(l,r2));

draw(shift((-r2-r1)/2,-.9)*((0,0)--(0,.4)), arrow = Arrow(6),red);
draw(shift(l-.5,(r1+r2)/2)*((0,0)--(.4,0)), arrow = Arrow(6),red);
draw(shift(dir(135)*((r1+r2)/2))*rotate(40)*((0,0)--(.4,0)), arrow = Arrow(6),red);

draw((0,0)--(.3,0), arrow = Arrow(6));
label("E",(.3,0),E);
draw((0,0)--(-.3,0), arrow = Arrow(6));
label("W",(-.3,0),W);
draw((0,0)--(0,.3), arrow = Arrow(6));
label("N",(0,.3),N);
draw((0,0)--(0,-.3), arrow = Arrow(6));
label("S",(0,-.3),S);

draw(shift(dir(135)*r2*1.03)*((0,0)--dir(135)*.6), arrow = Arrow(6), deepgreen+linewidth(2pt));
label("$\vec{F}_{w \to h}$", dir(135)*(r2*1.03+.6), NW, deepgreen);