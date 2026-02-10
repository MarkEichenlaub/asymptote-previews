//TeXeR source: https://artofproblemsolving.com/texer/mlthhnhb

draw((0,0)--3*(3/5,4/5), arrow = Arrow(6), blue);
draw(3*(3/5,4/5)--(5,0), arrow = Arrow(6),blue);
draw((0,0)--(5,0), arrow = Arrow(6));
label("$v$",(2.5,0),S);
label("$v_1$",(.6,.8),NW,blue);
label("$v_2$",(4,.7),NE,blue);

draw(2.5*(3/5,4/5)--(2.5*(3/5,4/5) + .5(4/5,-3/5))--((2.5*(3/5,4/5) + .5(4/5,-3/5)) + .5*(3/5,4/5)),blue);