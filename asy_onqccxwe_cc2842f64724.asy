real theta = 20;
pair end = dir(180-theta);

draw((0,0)--end);

draw(shift(end/2)*scale(.2)*rotate(-theta)*box((-.5,0),(.5,1)));

draw((0,0)--(-1,0));
draw(arc((0,0),.3,180,180-theta));
label("$\theta$",dir(180-theta/2)*.36);

pair c = end/2 + rotate(-theta)*(0,.5)*.2;

real g = .4;

draw(shift(c)*((0,0)--(0,-g)), arrow = Arrow(6),red);
label("$\vec{g}$",c+(0,-g/2),E,red);

real a = Tan(theta)*g;
draw(shift(c)*((0,0)--(-a,0)), arrow = Arrow(6), red);
label("$\vec{a}$",c+(-a/2,0),N,red);