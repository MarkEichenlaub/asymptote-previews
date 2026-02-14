draw((-2,-6)--(-2,6));
draw((2,-6)--(2,6));

draw((-2,-.4)--(2,-.4),dotted);
draw((-2,.4)--(2,.4),dotted);
fill((-2,-.4)--(2,-.4)--(2,.4)--(-2,.4)--cycle,gray);


draw((-1,.6)--(-1,2.3),arrow = Arrow(6));
label("$T_{\mathrm{up}}$",(-1,2.3),N);
draw((1,.6)--(1,2.1),arrow = Arrow(6));
label("$F_c$",(1,2.1),N);
draw((-1,-.6)--(-1,-2.8),arrow = Arrow(6));
label("$T_{\mathrm{down}}$",(-1,-2.8),SSE);
draw((1,-.6)--(1,-2.4),arrow = Arrow(6));
label("$mg$",(1,-2.4),S);