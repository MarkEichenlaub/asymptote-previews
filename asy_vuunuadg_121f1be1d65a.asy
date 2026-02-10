unitsize(1.5cm);

import graph;

real osc(real t){
return sin(t);
}

draw(graph(osc,0,2*pi),blue);
draw((0,0)--(2*pi,0));
draw((0,-1)--(0,1));

label("$x$",(0,1),W);
label("$t$",(2*pi,0),S);

dot((3*pi/4,sin(3*pi/4)));

real deltax = .2;
draw((3*pi/4 - deltax,0)--(3*pi/4 - deltax,1),dashed+red);
draw((3*pi/4 + deltax,0)--(3*pi/4 + deltax,1),dashed+red);

draw((3*pi/4,0)--(3*pi/4,sin(3*pi/4)),dotted);
draw((0,sin(3*pi/4))--(3*pi/4,sin(3*pi/4)),dotted);
label("$t_0$",(3*pi/4,0),S);
label("$\Delta x$",(0,sin(3*pi/4)),W,deepgreen);

draw((0,sin(3*pi/4 - deltax))--(3*pi/4 - deltax,sin(3*pi/4-deltax)), dashed+deepgreen);
draw((0,sin(3*pi/4 + deltax))--(3*pi/4 + deltax,sin(3*pi/4+deltax)), dashed+deepgreen);