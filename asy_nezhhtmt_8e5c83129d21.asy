unitsize(4cm);

pair s = (-3.5,0);

draw(shift(s)*((2,0)--(3,0)--(2,1)--cycle));
draw(shift(s)*((2.1,0.9)--(2.3,0.7)--(2.5,.9)--(2.3,1.1)--cycle));
draw(shift(s)*((2.3,0.9)--(2.6,0.6)),arrow = Arrow(6),blue);
draw(shift(s)*((2.32,0.72)--(2.52,.52)),arrow = Arrow(6),red);
label("$mg\sin\theta$",shift(s)*(2.6,.6),E,blue);
label("$\mu mg \cos\theta$",shift(s)*(2.52,.52),E,red);
label("going up the slope",shift(s)*(2.5,0),S);
draw(shift(s)*shift((2.4,1))*shift((.05,.05))*((0,0)--(-.2,.2)), arrow = Arrow(6));
label("$v$",s+(2.4,1)+(.05,.05)+(-.1,.1),NE);

draw((0,0)--(1,0)--(0,1)--cycle);
draw((.1,.9)--(.3,.7)--(.5,.9)--(.3,1.1)--cycle);
draw((.3,.9)--(.6,.6),arrow = Arrow(6),blue);
draw((.12,.92)--(-.08,1.12),arrow = Arrow(6),red);
label("$mg\sin\theta$",(.6,.6),E,blue);
label("$\mu mg \cos\theta$",(.1,1.1),N,red);
label("going down the slope",(.5,0),S);
draw(shift((.4,1))*shift((.05,.05))*((0,0)--(.2,-.2)), arrow = Arrow(6));
label("$v$",(.4,1)+(.05,.05)+(.1,-.1),NE);