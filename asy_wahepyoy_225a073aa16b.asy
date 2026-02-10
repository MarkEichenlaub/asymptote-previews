//TeXeR source: https://artofproblemsolving.com/texer/wahepyoy

unitsize(3cm);
path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
     (scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
     (scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
     (scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
     (scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.1)*rotate(15)*star;

filldraw(star,yellow);
draw((0,0)--scale(.5)*(2,1), arrow = Arrow(6));
//draw((0,0)--(2,1)--(3,.5),dotted);
draw((0,0)--(1,0),dashed);
draw((1,0)--(1,.5),dashed);
//label("horizontal part",(.5,0),S);
label("$u$",(1,.25),E);
label("$v$",(.5,0),S);
label("$c$",(.5,.25),NW);