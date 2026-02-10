unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.5;

draw(shift(-f,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2,push_height),N,red);

draw(shift(w/2,h/2)*((0,0)--(0,-.5)), arrow = Arrow(6), linewidth(2pt)+red);
label("$m\vec{g}$",(w/2,h/2-.5),S,red);

draw((w/2,.02)--(w/2-f,.02), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_f$",(w/2-f/2,.02),N,red);

draw((3w/4,0)--(3w/4,.5), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{N}$",(3w/4,.25),E,red);

dot((w,0),6+red);