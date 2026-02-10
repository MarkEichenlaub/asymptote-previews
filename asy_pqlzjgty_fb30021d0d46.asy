unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.5;

draw(shift(-f,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2,push_height),N,red);

draw((w,0)--(0,push_height), arrow = Arrow(6), deepgreen+linewidth(2pt));
label("$\vec{r}_P$",(w/2,push_height/2),NE,deepgreen);

dot((w,0),6+red);