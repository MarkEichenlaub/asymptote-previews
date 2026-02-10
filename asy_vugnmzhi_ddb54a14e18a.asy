unitsize(4cm);

draw((0,0)--(2,0), linewidth(2pt));

real r = .2;
pair center = (2 - .1 - r,r);
filldraw(circle(center,r), lightgray);

real theta = 30;
draw(arc(center,r+.05,90-theta, 90+theta), arrow = Arrow(6));
//draw(arc(center,r+.05,-90-theta,-90+theta), arrow = Arrow(6));

label("$\omega_0$",center+(0,r+.05),N);

dot((.3,0),5+red);

draw(shift(center.x,0)*((0,0)--(-.4,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$F_{\rm friction}$",(center.x-.2,0),S,red);