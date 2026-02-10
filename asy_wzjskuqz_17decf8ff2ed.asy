import graph;

real range(real theta){
return sin(2 *theta);}

draw(graph(range,0,pi/2));

draw((0,0)--(pi/2,0));
draw((0,0)--(0,1));
label("$\mathrm{range}$",(0,.5),W);
label("$\theta$",(pi/4,0),S);

draw((0,.9)--(pi/2,.9),dashed+red);
draw((0,.96)--(pi/2,.96),dashed+red);

draw((0,.1)--(pi/2,.1),dashed+red);
draw((0,.16)--(pi/2,.16),dashed+red);

draw((.05,0)--(.05,.1),deepgreen);
draw((.08,0)--(.08,.16),deepgreen);

draw((.56,0)--(.56,.9),deepgreen);
draw((.643,0)--(.643,.96),deepgreen);