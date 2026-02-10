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

label("outside", (-1.2,0),W);
label("middle",(-1.15,.15),W);
label("inside",(-.8,0),E);

draw((-1.21,0)--(-1.08,0));
draw((-1.17,.12)--(-1,0));
draw((-.79,0)--(-.92,0));