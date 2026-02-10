//TeXeR source: https://artofproblemsolving.com/texer/cfoiztbl

draw((0,-1)--(0,1)--(1,1)--(1,-1)--cycle);
draw((0,0)--(1,0));
label("$0$",(0,0),W);
label("$v_0$",(0,1),W);
label("$-v_0$",(0,-1),W);
label(rotate(90)*"$v_y$",(-.2,0),W);
label("$t$",(.5,-1.2),S);
draw((0,1)--(1,-1),red);
label("$4.9 \;\mathrm{s}$",(1,-1),S);
//draw((0,.5)--(.5,-.5)--(.52,0)--(1,0),blue);