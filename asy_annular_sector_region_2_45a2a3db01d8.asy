unitsize(3cm);
real r1 = 1;
real r2 = 1.2;
real l = 1;

real th = 150;

pair p1 = dir(th)*r1;
pair p2 = dir(th)*r2;

fill((-r1,-l)--(-r1,0)--arc((0,0),r1,180,th)--p1--p2--arc((0,0),r2,th,180)--(-r2,0)--(-r2,-1)--cycle,cyan);

draw((-r1,-l)--(-r1,0)--arc((0,0),r1,180,th));
draw((-r2,-1)--(-r2,0)--arc((0,0),r2,180,th));

draw(shift((-r2-r1)/2,-.9)*((0,0)--(0,.4)), arrow = Arrow(6),red);
//draw(shift(l-.5,(r1+r2)/2)*((0,0)--(.4,0)), arrow = Arrow(6),red);
draw(shift(dir(160)*((r1+r2)/2))*rotate(65)*((0,0)--(.4,0)), arrow = Arrow(6),red);

//draw(shift(dir(135)*r2*1.03)*((0,0)--dir(135)*.6), arrow = Arrow(6), deepgreen+linewidth(2pt));
//label("$\vec{F}_{w \to h}$", dir(135)*(r2*1.03+.6), NW, deepgreen);