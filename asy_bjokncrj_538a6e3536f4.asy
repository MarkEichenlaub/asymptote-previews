//TeXeR source: https://artofproblemsolving.com/texer/bjokncrj

unitsize(2cm);

draw((0,0)--(1,0)--(1,1)--(0,1)--cycle);
label("$M$",(.5,.5));

draw((.5,1)--(.5,2));

draw(shift(.75,2)*scale(.25)*unitcircle);
draw((.75,2)--(.75,2.5));

draw((0,2.5)--(1,2.5));

draw((1,2)--(1,1.5));

draw((1,1.5)--(1,1.3)--(4,1.3)--(4,1.5)--cycle);
fill((3.9,1.1)--(4.1,1.1)--(4,1.3)--cycle);

draw((2.1,1.5)--(2.9,1.5)--(2.9,2.3)--(2.1,2.3)--cycle);
label("$m_1$",(2.5,1.7));

draw((3,1.5)--(3.5,1.5)--(3.5,2)--(3,2)--cycle);
label("$m_2$",(3.25,1.75));

draw((1,1.25)--(4,1.25),dotted);
label("$L$",(2.5,1.25),S);

draw((4,2.05)--(3.25,2.05),dotted);
label("$x_2$",(3.67,2.05),N);

draw((4,2.35)--(2.5,2.35), dotted);
label("$x_1$",(3.2,2.35),N);