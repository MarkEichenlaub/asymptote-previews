unitsize(3cm);

draw(box((0,0),(2,2)));

filldraw(box((0.03,.5),(.4,.7)), lightgray);
label("$B$",(.2,.6));
dot((.33,.6), 8+black);
draw((.4,.6)--(2,.6), dotted);

filldraw(box((0.03,1.5),(.4,1.3)),lightgray);
label("$A$",(.2,1.4));
draw((.4,1.4)--(2,1.4), dotted);