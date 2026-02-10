unitsize(1cm);
import graph;
real v(real theta){
return sqrt(2*(1 + sin(theta)));}
draw(graph(v,0,2*pi),blue);
draw(box((0,0),(2*pi,2)));
label("$\theta$",(pi,-.4),S);
label("$v_\theta$",(-.4,1),W);
draw((pi/2,0)--(pi/2,.1));
draw((pi,0)--(pi,.1));
draw((3*pi/2,0)--(3*pi/2,.1));
label("$\frac{\pi}{2}$",(pi/2,0),S);
label("$\pi$",(pi,0),S);
label("$\frac{3\pi}{2}$",(3pi/2,0),S);
label("$2\pi$",(2*pi,0),S);
label("$0$",(0,0),SW);
draw((0,1)--(.1,1));
label("$v$",(0,1),W);
label("$2v$",(0,2),W);