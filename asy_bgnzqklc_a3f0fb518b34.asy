draw((0,0)--(0,1), arrow = Arrow(6));
label("$v$",(0,.5),E);

draw((0,1)--(-1,1), arrow = Arrow(6), blue);
label("$v$",(-.5,1),N,blue);

draw((0,0)--(-1,1), arrow = Arrow(6), dotted+red);
label("$\Delta v = \sqrt{2}v$",(-.5,.5),SW,red);