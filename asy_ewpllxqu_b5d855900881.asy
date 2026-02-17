dot((0,0));
draw((0,.25)--(4,.25)--(4,-.25)--(0,-.25)--cycle);

draw((0,.35)--(4,.35),arrow = Arrow(6));
draw((4,.35)--(0,.35),arrow = Arrow(6));
label("$l$",(2,.35),N);

draw(arc((0,0),4,0,50),arrow = Arrow(6),dashed);
label("$\omega$",(4*cos(pi/6),4*sin(pi/6)),NE);