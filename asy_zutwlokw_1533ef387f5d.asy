unitsize(4cm);

real r = 1;
real dr = .1;

fill(scale(1+dr)*unitcircle, cyan);
fill(scale(1-dr)*unitcircle,white);

draw(scale(1 + dr)*unitcircle,linewidth(2pt));
draw(scale(1-dr)*unitcircle, linewidth(2pt));

//draw((0,0)--(1,0), dotted);
//label("$R$",(.5,0),N);

draw(arc((0,0),1,30,60), arrow = Arrow(6),blue);
draw(arc((0,0),1,120,150), arrow = Arrow(6),blue);
draw(arc((0,0),1,210,240), arrow = Arrow(6),blue);
draw(arc((0,0),1,300,330), arrow = Arrow(6),blue);

draw(unitcircle, dotted);

dot((-1,0), 6+red);

draw(shift(-1,0)*((0,0)--(.3,0)), arrow = Arrow(6), red);
label("$\vec{F}_{\rm net}$",(-.7,0),E,red);