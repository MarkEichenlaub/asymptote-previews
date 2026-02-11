//TeXeR source: https://artofproblemsolving.com/texer/xqlzcnfr
import graph3;

size(200,0);

currentprojection=perspective(10,8,4);

real f(pair z) {return 0.5+exp(-abs(z)^2);}

draw((-1,-1,0)--(1,-1,0)--(1,1,0)--(-1,1,0)--cycle);

//draw(arc(0.12Z,0.2,90,60,90,25),ArcArrow3);

surface s=surface(f,(-1,-1),(1,1),nx=10,Spline);

xaxis3(Label("$x$"),red,Arrow3);
yaxis3(Label("$y$"),red,Arrow3);
zaxis3(XYZero(extend=true),red,Arrow3);

draw(s,lightgray,meshpen=black+thick(),nolight,render(merge=true));
dot((.9, .1, f((.9, .1))), blue);
draw((2dir((.9, .1, f((.9, .1)))))--(.9, .1, f((.9, .1))), BeginArrow3);
label("$O$",O,-Z+Y,red);