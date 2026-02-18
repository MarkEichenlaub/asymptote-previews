unitsize(3cm);
import graph;

draw((0,1)--(.25,1)--(.25,0)--(1,0));
dot((.25+.05,1), blue+4);
real y(real x){return 1-2(x-.25-.05)^2;}
draw(graph(y,.25+.05, .25+.05 + sqrt(1/2)), dotted);
label("(A)",(.5,0),S);
draw((.3,1)--(0.55,1), arrow = Arrow(6));
label("$v_0$",(.25+.125,1),N);

real dx = 1.5;
draw(shift(dx,0)*((0,1)--(.25,1)--(.25,0)--(1,0)));
dot((dx+.25+.05,1), blue + 4);
draw((dx + .3,1)--(dx+.3,0), dotted);
draw((dx + .3, 1)--(dx + .3, 1 - .25), arrow = Arrow(6));
label("$v_0$",(dx+.3,1-.125),E);
label("(B)",(dx + .5,0),S);