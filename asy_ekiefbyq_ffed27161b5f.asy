//TeXeR source: https://artofproblemsolving.com/texer/ekiefbyq

dot((0,0.03));
dot((1,0));
label("$m$",(0,0),N);
label("$2m$",(1,0),N);
draw((.1,0)--(.7,0), arrow = Arrow(6));
label("$\vec{v}_0$",(.4,0),N);

draw((1.45,.025)--(1.74,.025));
draw((1.45,-.025)--(1.74,-.025));
draw((1.65,-.075)--(1.8,0)--(1.65,.075));

draw((2,0)--(3,1), arrow = Arrow(6));
draw((2,0)--(3.1,-.7), arrow = Arrow(6));
dot((3.1,1.1));
dot((3.2,-.77));
label("$\vec{v}_1$",(2.5,.5),NW);
label("$\vec{v}_2$",(2.5,-.3),S);
label("$m$",(3.1,1.1),E);
label("$2m$",(3.2,-.77),E);
draw((2,0)--(3,0),dashed);
label("$\theta_1$",(2.5,.2));
label("$\theta_2$",(2.6,-.2));