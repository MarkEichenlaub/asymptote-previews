//TeXeR source: https://artofproblemsolving.com/texer/wbijooij

unitsize(3cm);

import graph;
real theta(real v){
return atan(v^2/sqrt(v^4 + 2*v^2));
}
real theta2(real v){
return atan(v^2/sqrt(v^4 + 5*v^2));
}

real x = 2*sqrt(2.5);
draw(graph(theta,.01,2),red);
//draw(xscale(2/x)*graph(theta2,.01,x),blue);

draw(box((0,0),(2,1)));
draw((0,pi/4)--(2,pi/4),dotted);
label("$45^\circ$",(0,pi/4),W);
label(rotate(90)*"$\theta_{\rm max}$",(-.2,.5),W);
label("$v$",(1.3,-.2),S);
label("$0$",(0,0),SW);

draw((1,0)--(1,.05));
label("$\sqrt{gh}$",(1,0),S);