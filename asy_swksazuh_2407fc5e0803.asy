unitsize(1cm);
fill(unitcircle, yellow);
fill(shift(0,-3)*scale(.3)*unitcircle,blue);
draw(scale(3)*unitcircle,dashed);
fill(shift(0,-3)*scale(.3)*unitcircle,blue);
draw((0,0)--(-6,0),arrow = Arrow(TeXHead), dashed+linewidth(.5));
label("to Earth",(-5,0),S);

draw(rotate(15)*((0,0)--(3,0)),gray);
label("$d$",(1.5,.3),N);