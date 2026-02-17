draw((-1,1)--(1,1), linewidth(2pt));
draw((0,1)--(0,0), blue+linewidth(1.5 pt));
label("top",(0,.5),W,blue);
//dot((0,.5));
dot((0,.25), black + 8bp);
draw((0,0)--(0,-.5), blue+linewidth(1.5 pt));
label("bottom",(0,-.25),W, blue);
draw((0,-.52)--(0,-1),arrow = Arrow(6),red);
label("$F$",(0,-.75),E,red);