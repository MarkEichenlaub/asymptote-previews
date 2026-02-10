//TeXeR source: https://artofproblemsolving.com/texer/aklomrqt

unitsize(1.5cm);

real x_max = 9.8/1.6;

draw((0,-1)--(0,1)--(x_max,1)--(x_max,-1)--cycle);
draw((0,0)--(x_max,0));
label("$0$",(0,0),W);
label("$v_0$",(0,1),W);
label("$-v_0$",(0,-1),W);
label(rotate(90)*"$v$",(-.4,0),W);
label("$t$",(x_max/2,-1.2),S);
draw((0,1)--(1,-1),red);
label("$4.9 \;\mathrm{s}$",(1,-1),S);
label("$30.6 \;\mathrm{s}$",(x_max,-1),S);
draw((0,1)--(1*9.8/1.6,-1),blue);