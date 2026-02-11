xaxis("$t$", 0, 1.2, Arrow(TeXHead));
yaxis("$v$", 0, 1.2, Arrow(TeXHead));

draw((0,1)--(1,0),red);
label("$B$",(.5,.5),NE,red);

draw((0,1)--(1,1),blue);
label("$A$",(.5,1),N,blue);

draw((1,-.05)--(1,.05));
label("$T$",(1,-.05),S);
draw((1,0)--(1,1), dotted);

draw((-.05,1)--(.05,1));
label("$v_0$",(-.05,1),W);