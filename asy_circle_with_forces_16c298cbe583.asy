unitsize(3cm);

draw(unitcircle);
pen brwn = RGB(166, 123, 7);
draw(shift(0,-.02)*((-2,-1)--(2,-1)),brwn+linewidth(2pt));
draw((1.05,0)--(2.05,0), arrow = Arrow(6), blue);
label("$\vec{v}$",(1.55,0),N,blue);
draw((0,0)--(0,-1.5), arrow = Arrow(6),red);
label("$mg$",(0,-1.5),S,red);
draw((.1,-1)--(.1,.5), arrow = Arrow(6), red);
label("$N = mg$",(.1,.5),N,red);