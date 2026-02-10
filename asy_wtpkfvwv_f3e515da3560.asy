draw((0,0)--(0,1));
draw((0,0)--(1,0));
label("$x$",(1,0),S);
label("$y$",(0,1),W);
dot((.5,0),blue);
draw("$v_a$",(.5,0)--(.75,0), arrow = Arrow(6),blue);
draw("$v_b$",(0,.5)--(0,.75), arrow = Arrow(6),blue);
dot((0,.5),blue);

draw((0,0)--.7*(-sqrt(3)/2,-.5), arrow = Arrow(6));
label("$z$",.7*(-sqrt(3)/2,-.5),SW);