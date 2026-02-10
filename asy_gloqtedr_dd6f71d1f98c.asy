draw((0,0)--(0,1),linewidth(2pt));
draw((-1,1)--(5,1),linewidth(2pt));
draw((4,1)--(4,0),linewidth(2pt));
draw((2,1)--(2.5,2));
draw((2.5,2)--(3,1));
draw((2.5,2)--(2.5,2.5));
draw((3,2.5)--(2,2.5));
draw(shift(2.5,3)*scale(.25)*unitcircle);
draw((2.5,2.5)--(2.5,2.75));

draw((2.6,2.2)--(2.6,1),arrow = Arrow(6),red+linewidth(1.5pt));
label("$mg$",(2.6,2.2),E,red);
draw((2.4,1)--(2.4,2.2),arrow = Arrow(6),blue+linewidth(1.5pt));
label("$N = mg$",(2.4,1),SW,blue);