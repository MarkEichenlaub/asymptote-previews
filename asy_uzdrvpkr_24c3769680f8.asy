unitsize(2cm);

draw((0,0)--(0,1), linewidth(2pt));
draw((.05,.5)--(.6,.5), arrow = Arrow(6));
label("$v$",(.4,.5),N);
draw(shift(1,.5)*scale(.1)*unitcircle);