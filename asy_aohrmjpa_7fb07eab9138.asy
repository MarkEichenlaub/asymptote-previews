draw(xscale(1.5)*unitcircle);
draw((0,-1)--(0,1),dotted);
draw((-1.5,0)--(1.5,0),dotted);
dot((-.75,0));
label("$S$",(-.75,0),SE);
draw( (-.75,-sqrt(3)/2)--(-.75,sqrt(3)/2),dotted);
dot( (-.75,sqrt(3)/2) );
label("$P$",(-.75,sqrt(3)/2),N);

draw((-.75,sqrt(3)/2)--(-1.5,sqrt(3)/2 -.75/sqrt(3)),arrow = Arrow(6));
label("$v_1$",(-1.2,.6),N);
label("$v_2$",(-1.5,-.5),W);

draw((-1.5,0)--(-1.5,-1), arrow = Arrow(6) );

//draw((0,-.2)--(1.5,-.2),arrow = Arrow(TeXHead) );
//draw((1.5,-.2)--(0,-.2),arrow = Arrow(TeXHead));
//label("$a$",(.75,-.2),S);

dot((.75,0));
draw((-.75,sqrt(3)/2)--(.75,0),dotted);
label("$F$",(.75,0),S);