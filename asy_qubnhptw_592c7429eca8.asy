unitsize(5cm);

import graph;

real lj(real x){
return (1/x)^12 - (1/x)^6;
}

draw(graph(lj,.94,2),blue+linewidth(1.5pt));

draw(box((0,-.4),(2,.7)));

draw((0,0)--(2,0), dashed);

label("$0$",(0,0),W);
label("$0$",(0,-.4),S);
label("$r$",(1,-.5),S);
label("$U$",(-.1,.2),W);

real x0 = 2^(1/6);
real b = -1/4;
real a = .5*9*2^(2/3);

real par(real x){
return a*(x-x0)^2 + b;
}

draw(graph(par,.85,1.4),red+dotted+linewidth(2pt));