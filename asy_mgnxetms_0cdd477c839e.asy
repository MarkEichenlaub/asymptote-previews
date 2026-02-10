//TeXeR source: https://artofproblemsolving.com/texer/mgnxetms

dot((0,0));
dot((1,0));
label("$m$",(0,0),N);
label("$2m$",(1,0),N);
draw((.1,0)--(.7,0), arrow = Arrow(6));
label("$v_0$",(.4,0),N);

draw((1.45,.025)--(1.74,.025));
draw((1.45,-.025)--(1.74,-.025));
draw((1.65,-.075)--(1.8,0)--(1.65,.075));

draw((2,0)--(2,1), arrow = Arrow(6));
draw((2,0)--(2+sqrt(3)/2,-.5), arrow = Arrow(6));
dot((2,1.1));
dot((2+sqrt(3)/2+.05,-.53));
label("$v_1$",(2,.5),W);
label("$v_2$",(2.75,-.5),SW);
label("$m$",(2,1.1),N);
label("$2m$",(2.75,-.6),SE);
draw((2,0)--(3,0),dashed);
//label("$\theta_1$",(2.5,.2));
//label("$\theta_2$",(2.6,-.2));