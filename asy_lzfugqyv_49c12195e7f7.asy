draw((0,0)--(.2,.2)--(.2,1.2)--(0,1)--cycle);

draw("$y$",(.1,1.3)--(.3,1.3),dotted);
draw("$z$",(.1,1.3)--(.1,1.5),dotted);
draw("$x$",(.1,1.3)--(0,1.2),dotted);

draw((.18,.3)--(.02,.14),arrow = Arrow(6));
draw(shift(0,.2)*((.18,.3)--(.02,.14)),arrow = Arrow(6));
draw(shift(0,.4)*((.18,.3)--(.02,.14)),arrow = Arrow(6));
draw(shift(0,.6)*((.18,.3)--(.02,.14)),arrow = Arrow(6));
draw(shift(0,.8)*((.18,.3)--(.02,.14)),arrow = Arrow(6));