//TeXeR source: https://artofproblemsolving.com/texer/excmzadh

fill((-1.5,.8)--(6,.8)--(6,-2)--(-1.5,-2)--cycle,lightblue);

draw(unitcircle);
label("fish",(0,-1),S);

draw(shift(5,5)*scale(.25)*unitcircle);
label("cricket",(5,5.25),N);

filldraw(shift(1,1)*scale(.25)*unitcircle, lightblue);
draw((1+.25*sqrt(2),1+.25*sqrt(2))--(2.5,2.5), arrow = Arrow(6));
label("water",(1.25,1),E);