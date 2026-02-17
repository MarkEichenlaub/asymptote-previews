draw(yscale(.1)*unitcircle);
draw((-.75,-.0661)--(-.75,-.4));
draw(shift(-.75,-.4)*scale(.125)*unitcircle);

draw((-.25,-.0968)--(-.25,-.4));
draw(shift(-.25,-.4)*scale(.125)*unitcircle);

draw((.25,-.0968)--(.25,-.4));
draw(shift(.25,-.4)*scale(.125)*unitcircle);

draw((.75,-.0661)--(.75,-.4));
draw(shift(.75,-.4)*scale(.125)*unitcircle);

draw(shift(-.5,-.7)*scale(.125)*unitcircle);
draw((-.875,-.4)--(-.875,-.7));
draw((-.625,-.4)--(-.625,-.7));

draw(shift(0,-.7)*scale(.125)*unitcircle);
draw((-.125,-.4)--(-.125,-.7));
draw((.125,-.4)--(.125,-.7));


draw(shift(.5,-.7)*scale(.125)*unitcircle);
draw((.625,-.4)--(.625,-.7));
draw((.875,-.4)--(.875,-.7));

draw((-.375,-.4)--(-.375,-.7));
draw((.375,-.4)--(.375,-.7));

draw((-.5,-.7)--(-.5,-1));
draw((0,-.7)--(0,-1));
draw((.5,-.7)--(.5,-1));

dot((-.5,-1));
dot((0,-1));
dot((.5,-1));

label("$m_1$",(0,-1),S);
label("$m_2$",(.5,-1),S);
label("$m_N$",(-.5,-1),S);

draw(arc((1,-.7),.125,180,360),dotted);
draw(arc((-1,-.7),.125,180,360),dotted);