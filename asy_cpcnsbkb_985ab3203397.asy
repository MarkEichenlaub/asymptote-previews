//TeXeR source: https://artofproblemsolving.com/texer/cpcnsbkb

fill((.2,0)--(.4,0)--(.4,-.5)--(.2,-.5)--cycle, palered);
fill(shift(.4,0)*((.2,0)--(.4,0)--(.4,-.5)--(.2,-.5)--cycle), palered);

//draw((0,-.5)--(1,-.5),dotted);
label("$-g$",(0,-.5),W);
draw(box((0,-1),(1,0.5)));
draw((0,0)--(1,0));
label("$0$",(0,0),W);
label(rotate(90)*"$a_y$",(-.2,-.2));
label("$t$",(.5,-1.2));

draw((0,0)--(.2,0)--(.2,-.5)--(.4,-.5)--(.4,0)--(.6,0)--(.6,-.5)--(.8,-.5)--(.8,0)--(1,0),red);