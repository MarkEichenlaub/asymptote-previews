//TeXeR source: https://artofproblemsolving.com/texer/ueobayeu

draw(unitcircle);
draw(shift((1,-2))*unitcircle);

draw((-1,0)--(-1,-2));
dot((-1,-2));
//label("$m_1$",(-1,-2),S);
draw((-.95,-2)--(-.95,-1),arrow = Arrow(6),red);

draw((-1.05,-2)--(-1.05,-3.4),arrow = Arrow(6),red);
label("$m_1g$",(-1.05,-2.7),W,red);

draw((1.05,-2)--(1.05,-1),arrow = Arrow(6),orange);
label("$T_1$",(1.05,-1.5),E,orange);

draw((1,0)--(1,-2));
draw((0,-2)--(0,-4));
draw((2,-2)--(2,-4));
dot((0,-4));
draw((-.05,-4)--(-.05,-5.2),arrow = Arrow(6),green);
label("$m_2g$",(-.05,-4.6),W,green);
draw((.05,-4)--(.05,-2.6),arrow = Arrow(6),green);
label("$T_2$",(.05,-3.2),E,green);

dot((2,-4));
draw((2.05,-4)--(2.05,-4.8),arrow = Arrow(6), blue);
label("$m_3g$",(2.05,-4.4),E,blue);
draw((1.95,-4)--(1.95,-2.6),arrow = Arrow(6),blue);
label("$T_2$",(1.95,-3.2),W,blue);
label("$T_1$",(-.95,-1.5),E,red);

//label("$m_2$",(0,-4),S);
//label("$m_3$",(2,-4),S);