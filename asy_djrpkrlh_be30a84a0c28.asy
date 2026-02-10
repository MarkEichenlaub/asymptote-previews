unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.5;

draw(shift(w/2,h/2)*((0,0)--(0,-.5)), arrow = Arrow(6), linewidth(2pt)+red);
label("$m\vec{g}$",(w/2,h/2-.5),S,red);

dot((w,0),6+red);