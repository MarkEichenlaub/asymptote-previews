//TeXeR source: https://artofproblemsolving.com/texer/lporyxwn

draw((0,0)--(1,1),dotted);
draw((1,1)--(2,2),arrow = Arrow(6));
dot((1,1));
draw((0,0)--(1,-1),dotted);
dot((1,-1));
draw((1,-1)--(2,-2),arrow = Arrow(6));
label("$v$",(1.5,1.5),NW);
label("$v$",(1.5,-1.5),SW);
label("$m$",(1,1),W);
label("$m$",(1,-1),W);
draw((.3,.3)--(.6,0)--(.3,-.3));

draw((0,0)--(-1,0),dotted);
dot((-1,0));
draw((-1,0)--(-2.2,0),arrow = Arrow(6));
label("$m$",(-1,0),S);