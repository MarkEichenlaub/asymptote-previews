unitsize(2cm);

draw((0,0)--(0,1), linewidth(2pt));
draw(shift(1,.5)*scale(.1)*unitcircle);
draw((.85,.5)--(.3,.5), arrow = Arrow(6));
label("$v$",(.45,.5),N);

draw((0,-3)--(0,-2), linewidth(2pt));
draw(shift(.3,-2.5)*scale(.1)*unitcircle);
draw((.45,-2.5)--(1,-2.5), arrow = Arrow(6));
label("$v$",(.8,-2.5),N);