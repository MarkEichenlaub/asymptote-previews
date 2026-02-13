draw((0,0)--(0,1));
draw((1,0)--(1,1));
draw((.5,1)--(.5,.8),arrow=Arrow(6));
label("$4 \;\mathrm{m/s}$",(.5,.9),E);

draw((0,-.1)--(1,-.1),arrow=Arrows(6),dotted);

draw(shift(.1,.3)*scale(.7)*rotate(25)*((0,0)--(.2,0)..(.3,.1)..(.2,.2)--(0,.2)--cycle));

pair init = (.3,.47);

draw(init--(init + .15*(cos(25*pi/180),sin(25*pi/180))),arrow = Arrow(6));

label("$600 \;\mathrm{m}$",(.5,-.1),S);