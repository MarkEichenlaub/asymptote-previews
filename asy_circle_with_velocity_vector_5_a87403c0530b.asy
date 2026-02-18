unitsize(3cm);

draw(unitcircle);
pen brwn = RGB(166, 123, 7);
draw(shift(0,-.02)*((-2,-1)--(2,-1)),brwn+linewidth(2pt));
draw((1.05,0)--(2.05,0), arrow = Arrow(6), blue);
label("$\vec{v}$",(1.55,0),N,blue);