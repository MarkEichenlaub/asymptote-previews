unitsize(1.5cm);

import graph;

real osc(real t){
return sin(t);
}

draw(graph(osc,0,2*pi),blue);
draw((0,0)--(2*pi,0));
draw((0,-1)--(0,1));

//label("$x$",(0,1),W);
label("$t$",(2*pi,0),S);

dot((pi/2,sin(pi/2)));

real deltax = .2;
draw((pi/2 - deltax,0)--(pi/2 - deltax,1),dashed+red);
draw((pi/2 + deltax,0)--(pi/2 + deltax,1),dashed+red);

draw((pi/2,0)--(pi/2,sin(pi/2)),dotted);
draw((0,sin(pi/2))--(pi/2,sin(pi/2)),dotted);
label("$t_0$",(pi/2,0),S);
label("$\Delta x$",(0,sin(pi/2)),W,deepgreen);

draw((0,sin(pi/2 - deltax))--(pi/2 - deltax,sin(pi/2-deltax)), dashed+deepgreen);
draw((0,sin(pi/2))--(pi/2,sin(pi/2)), dashed+deepgreen);