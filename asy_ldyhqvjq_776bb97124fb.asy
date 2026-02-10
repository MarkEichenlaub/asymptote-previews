unitsize(3cm);
draw(box((0,0),(2,1)));
draw((0,0)--(2,1), blue);
label("$v_{x; \mathrm{avg}; t}$",(0,.5),W);
label("$0$",(0,0),SW);
label("$t$",(1,0),S);
label(rotate(90)*"$v_x$",(-.5,.5));
draw((0,.5)--(2,.5), dotted);