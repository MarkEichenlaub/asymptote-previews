unitsize(4cm);

draw((0,0)--(3.5,0), linewidth(2pt));

real r = .2;
pair center = (2 - .1 - r,r+.1);
filldraw(circle(center,r), lightgray);

real theta = 30;
draw(arc(center,r+.05,90-theta, 90+theta), arrow = Arrow(6));
draw(arc(center,r+.05,-90-theta,-90+theta), arrow = Arrow(6));

label("$\omega$",center+(0,r+.05),N);