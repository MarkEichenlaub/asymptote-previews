fill(unitcircle,gray);
draw(unitcircle,linewidth(1.5 pt));
draw((-1,0)--(1,0),dashed+linewidth(.75 pt));
draw((0,-1)--(0,1),dashed+linewidth(.75 pt));
draw((-2,-1)--(2,-1),linewidth(2.0 pt));
label("I",(.4,.4));
label("II",(-.4,.4));
label("III",(-.4,-.4));
label("IV",(.4,-.4));

draw((1,0)--(2.5,0),arrow = Arrow(6),blue);
label("$a_{disk}$",(1.75,0),S);