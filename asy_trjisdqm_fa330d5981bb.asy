//TeXeR source: https://artofproblemsolving.com/texer/trjisdqm

draw((0,0)--(1,.1),dotted);
draw((1,.1)--(2,.2),arrow = Arrow(6));
dot((1,.1));
draw((0,0)--(1,-.1),dotted);
dot((1,-.1));
draw((1,-.1)--(2,-.2),arrow = Arrow(6));
label("$v$",(1.5,.15),NW);
label("$v$",(1.5,-.15),SW);
label("$m$",(1,.1),NW);
label("$m$",(1,-.1),SW);
//draw((.3,.3)--(.6,0)--(.3,-.3));