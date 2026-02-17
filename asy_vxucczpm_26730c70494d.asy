dot((0,0));
dot((0,1));
draw((0,0)--(0,1),dotted);
label("$d$",(0,.5),W);

draw((0,1)--(0,2),dashed,arrow = Arrow(6));
draw((0,0)--(0,-1),dashed,arrow = Arrow(6));

label("no radiation",(0,1.5),E);
label("no radiation",(0,-.5),E);