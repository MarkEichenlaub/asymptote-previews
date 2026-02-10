//TeXeR source: https://artofproblemsolving.com/texer/websqxfw

unitsize(5cm);

draw((-.5,-.1)--(1.5,-.1));

draw((0,0)--(.5,1), arrow = Arrow(6),red);
fill(scale(.1)*unitcircle);

draw(arc((0,0),.25,0,60), dotted);
label("$60^\circ$",.25*dir(30),NE);
label("$v$",(.5,1)/2,NW,red);
draw((0,0)--(.5,0)--(.5,1),dashed+red);
label("$v_x$",(.35,0),S,red);
label("$v_y$",(.5,.5),E,red);

draw(arc((.5,1),.25,-90,-120), dotted);
label("$30^\circ$",.25*dir(-105)+(.5,1),S);

draw((.5,1)--(1,0)--(.5,0),lightred+dotted);