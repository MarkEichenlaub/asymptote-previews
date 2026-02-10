//TeXeR source: https://artofproblemsolving.com/texer/bkclommg

unitsize(5cm);

//draw((-.5,-.1)--(1.5,-.1));

draw((0,0)--(1,1), arrow = Arrow(6),red);
fill(scale(.1)*unitcircle);

draw(arc((0,0),.25,0,45), dotted);
label("$45^\circ$",.25*dir(22.5),E);
label(rotate(45)*"$v$",(1,1)/2,NW,red);
draw((0,0)--(1,0)--(1,1),dashed+red);
label("$v_x = \frac{\sqrt{2}}{2} v$",(.5,0),S,red);
label("$v_y= \frac{\sqrt{2}}{2} v$",(1,.5),E,red);

//draw(arc((.5,1),.25,-90,-120), dotted);
//label("$30^\circ$",.25*dir(-105)+(.5,1),S);

//draw((.5,1)--(1,0)--(.5,0),lightred+dotted);