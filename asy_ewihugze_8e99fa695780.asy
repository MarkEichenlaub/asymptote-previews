real theta = 30*pi/180;

draw((0,0)--(sin(theta),-cos(theta)));

dot((sin(theta),-cos(theta)));

draw((0,0)--(0,-1),dotted);

draw(arc((0,0),.3,-90,-60));
label("$\theta$",(.05,-.35));

pair bulb = (sin(theta),-cos(theta));

draw(bulb--(bulb - (0,.4)),arrow = Arrow(6),red);
label("$mg$",bulb+(.09,-.2),red);
draw(bulb--(bulb + .4*sin(theta)*(-cos(theta),-sin(theta))),arrow = Arrow(6),red);
draw((bulb + .4*sin(theta)*(-cos(theta),-sin(theta)))--(bulb - (0,.4)),dotted+red);