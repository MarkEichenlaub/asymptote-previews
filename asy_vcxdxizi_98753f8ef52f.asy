//TeXeR source: https://artofproblemsolving.com/texer/vcxdxizi

draw(box((0,0),(pi/2,1.05)));
label("$\Delta x$",(0,.5),W);
label("$\theta \,\,\, (^\circ)$",(pi/4,-.2),S);

import graph;
real range(real angle){
return cos(angle)*sin(angle)*2;
}

draw(graph(range,0,pi/2),red);
label("$0$",(0,0),S);
label("$90$",(pi/2,0),S);
label("$45$",(pi/4,0),S);
draw((pi/4,0)--(pi/4,1),dotted);