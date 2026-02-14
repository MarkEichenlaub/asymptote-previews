draw((0,0)--(2,0), linewidth(2pt));
draw((1,-.1)--(1.7,-.1), arrow = Arrow(6));
label("$v$",(1.5,-.1),S);

filldraw((.5,0)--(1.5,0)--(1.5,1)--(.5,1)--cycle,lightgray);

draw((1,0)--(1,1.5), arrow = Arrow(6),red);
label("$N$",(1,1.5),N,red);
draw((1,0)--(1.8,0), arrow = Arrow(6), red);
label("$\mu N$",(1.8,0),N,red);