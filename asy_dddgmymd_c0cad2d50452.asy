unitsize(.25cm);

draw((-15,0)--(18,0));
draw((0,0)--(0,15));
label("$t$",(0,15),W);
label("$x$",(18,0),S);

draw((0,0)--(0,20),blue);
draw((15,0)--(15,20),blue);
label("$CL$",(0,0),S,blue);
label("$CR$",(15,0),S,blue);

draw((0,0)--(15,5/4*15),red);
label("$RR$",(5,5*5/4),SE,red);

draw((-15,0)--(0,15*5/4),red);
label("$RL$",(-10,5*5/4),SE,red);

dot((0,15*5/4));
label("$A$",(0,15*5/4),E);

dot((15,15*5/4));
label("$B$",(15,15*5/4),E);