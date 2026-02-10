unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01+Sin(5))*rotate(-5)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.5;

draw(shift(-f+1.6*Sin(5),push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2,push_height),N,red);

dot((w,0),red+6);

draw((w,0)--(w,push_height), red+dotted+linewidth(1pt));
label("$r_\perp$",(w,push_height/2),W,red);
draw((w,push_height)--(1.6*Sin(5),push_height), red+dotted+linewidth(1pt));
label("$r_\parallel$",(.5,push_height),N,red);