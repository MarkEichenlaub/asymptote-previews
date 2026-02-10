unitsize(4cm);
fill(box((-1,.012),(1,.5)), lightblue);
draw((-1,1)--(-1,0)--(-.03,0), linewidth(2pt));
draw((.03,0)--(1,0)--(1,1), linewidth(2pt));

filldraw(shift(-.8,-.1)*scale(.2)*unitcircle, lightgray);
filldraw(shift(.8,-.1)*scale(.2)*unitcircle, lightgray);

draw((0,0)--(0,-.3), lightblue+linewidth(4pt));

draw((1.05,.25)--(1.55,.25), arrow = Arrow(6));
label("$v$",(1.3,.25),N);
draw((-1.2,-.3)--(1.5,-.3));