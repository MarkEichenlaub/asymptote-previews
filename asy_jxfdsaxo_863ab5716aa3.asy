unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = h;
real f = 0.5;

draw(shift(-f,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2,push_height),N,red);

label("$h$",(1,h/2),E);
label("$w$",(.5,0),S);

dot((w,0),6+red);

draw((w,0)--(w,.5), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{N}$",(w,.25),E,red);

draw(shift(w/2,h/2)*((0,0)--(0,-.5)), arrow = Arrow(6), linewidth(2pt)+red);
label("$m\vec{g}$",(w/2,h/2-.5),S,red);

draw((w/2,.02)--(w/2-f,.02), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_f$",(w/2-f/2,.02),N,red);