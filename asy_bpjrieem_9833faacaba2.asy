size(5cm);
draw(unitcircle);
draw((-1,-2)--(-1,0));
draw((1,-2)--(1,0));
draw((0,0)--(0,2));
fill(shift(0,2)*scale(.3)*polygon(4));
fill(shift(-.3,2.15)*yscale(.1)*xscale(.15)*polygon(4));
draw((-.1,1.8)--(-.1,2),white);
draw((0,1.8)--(0,2),white);
draw((.1,1.8)--(.1,2),white);
//label("$m_1$",(-1,-2),W);
//label("$m_2$",(1,-2),E);

draw((-1,-2)--(-1,-1),arrow = Arrow(6),blue);
draw((1,-2)--(1,-1),arrow = Arrow(6),blue);
label("$T$",(-1,-1.5),W,blue);
label("$T$",(1,-1.5),E,blue);
label("$m_1g$",(-1,-2.5),W,red);
label("$m_2g$",(1,-2.5),E,red);
draw((-1,-2)--(-1,-2.7),arrow = Arrow(6),red);
draw((1,-2)--(1,-3),arrow = Arrow(6),red);

dot((-1,-2));
dot((1,-2));