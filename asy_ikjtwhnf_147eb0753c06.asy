unitsize(1cm);

import graph;

draw(box((0,0),(1,1)));
draw(box((0,0),(-1,1)));

real f(real x){ return .01*x*x*x*x;}
draw(graph(f,-5,5));


draw((0,1.2)--(2.5,1.2),arrow = Arrow(6));
label("$v = 20 \,\mathrm{m/s}$",(.75,1.2),N);


draw((5.5,0)--(5.5,6.25),dashed+linewidth(.5pt));
label("$h = 21 \, \mathrm{m}$",(5.5,3),E);