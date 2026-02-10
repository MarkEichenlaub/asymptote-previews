draw((-1,0)--(1,0)--(0,0)--(0,1)--(0,-1));
label("$x$",(1,0),S);
label("$p$",(0,1),W);

draw((0,.8)--(.8,0),red);
draw((0,.8)--(.4,.4),arrow = Arrow(6),red);

draw((.8,0)--(0,-.8),red);
draw((.8,0)--(.4,-.4),red,arrow = Arrow(6));

draw((0,-.8)--(-.8,0)--(0,.8),red);
draw((0,-.8)--(-.4,-.4),red,arrow = Arrow(6));
draw((-.8,0)--(-.4,.4),red,arrow = Arrow(6));

dot((.8,0),red);