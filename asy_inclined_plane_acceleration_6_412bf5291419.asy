picture pic;
picture pic1;

currentpicture = pic1;

unitsize(8cm);

real theta = 20;
real L = 1;
pair top = (0,Tan(theta));
real s = 0.1;
real g = 0.25;
real a = g*Sin(theta);
pair av = a*dir(-theta);

draw((0,0)--(L,0)--top--cycle);
label("$L$",(L/2,0),S);

draw(arc((L,0),.3,180,180-theta));
label("$\theta$",(L,0)+dir(180-theta/2)*.35);

draw(shift(top)*rotate(-theta)*scale(s)*box((0,0),(1,1)) );

pair c = top+rotate(-theta)*scale(s)*(.5,.5);

draw(shift(c)*((0,0)--(0,-g)), arrow = Arrow(6),red);
label("$\vec{g}$",c+(0,-g),S,red);

real len = .15;

draw(shift(c)*((0,0)--av), arrow = Arrow(6),red);
label("$\vec{a}$",c+av,E,red);

currentpicture = pic;
unitsize(8cm);

add(rotate(theta)*pic1);

pair o = (.75*L,top.y+.1);
draw(shift(o)*scale(len)*((0,0)--(1,0)), arrow = Arrow(6));
draw(shift(o)*scale(len)*((0,0)--(0,1)), arrow = Arrow(6));
label("$\hat{x}'$",o+(len,0),E);
label("$\hat{y}'$",o+(0,len),N);