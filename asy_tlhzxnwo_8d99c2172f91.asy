unitsize(1cm);
draw((-.5,0)--(8,0),dashed);

draw((.6,.3)--(1.8,.3)--(1.8,1.5)--(.6,1.5)--cycle);
draw(shift(1.2, 2.6)*unitcircle);
draw((1.2,2.6)--(1.2,1.5));
draw((1.2,2.6)--(1.2,2.6)+(cos(45),sin(45)),dotted,arrow = Arrow(3));
dot((.2,2.5));
dot((2.2,2.5));
label("$R$",(1.35,3.35));
label("$A$",(.2,2.5),SW);
label("$C$",(2.5,2.5),E);
dot((.2,7.5));
label("$B$",(.2,7.5),SE);

draw(shift(3.2,6)*unitcircle);

draw((-.5,7.5)--(5,7.5),linewidth(1.5pt));
draw((3.2,7.5)--(3.2,6));

draw((.2,7.5)--(.2,2.6));
draw((2.2,2.6)--(2.2,6));

draw((-.5,2.6)--(1.2,2.6),dotted);
draw((-.2,0)--(-.2,2.6),arrow=Arrow(6));
draw((-.2,2.6)--(-.2,0),arrow = Arrow(6));
draw((-.2,2.6)--(-.2,7.5),arrow = Arrow(6));
draw((-.2,7.5)--(-.2,2.6),arrow = Arrow(6));

label("$H_2$",(-.2,6),W);
label("$H_1$",(-.2,.6),W);

draw((4.2,6){0,-1}..(8,0));

dot((8,0));
label("$K$",(8,0),NE);
draw((8,0)--(8.5,-.3),arrow = Arrow(6));
label("$F$",(8.5,-.5),NE);