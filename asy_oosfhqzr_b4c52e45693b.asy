//TeXeR source: https://artofproblemsolving.com/texer/oosfhqzr
import graph;

size(200);

//size(250,200,IgnoreAspect);

real Sin(real t) {return sin(t);}
real Cos(real t) {return cos(t);}

draw(graph(Sin,0,pi),red,"$\sin(2\pi x)$");
draw((0,0)--(.9,.9));
//draw(circle((0,0), .3));
//draw(graph(Cos,0,1),blue,"$\cos(2\pi x)$");

xaxis("$t$");
yaxis("$\theta$");