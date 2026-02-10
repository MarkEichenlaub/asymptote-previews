unitsize(3cm);

real gamma = 2;

path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
(scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
(scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
(scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
(scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.05)*rotate(15)*star;

picture lizzie(){
picture l;
draw(l, box((-1,-.25),(1,.25)));
label(l,"L");
//draw(l,(1.05,.125)--(1.55,.125), arrow = Arrow(6));
draw(l,(-1,-.35)--(1,-.35),brown+dotted+1bp,Arrows(2mm));
label(l,"$10 \;\mathrm{m}$",(0,-.35),UnFill);
return l;
}

picture barn(){
picture b;
draw(b, (-.6,-.4)--(-.6,-.5)--(.6,-.5)--(.6,.5)--(-.6,.5)--(-.6,.4));
draw(b, (-.62,-.4)--(-.62,-1.2),linewidth(2pt));
label(b,"barn",(0,-.5),S);
//draw(b,(-.6,.6)--(.6,.6), brown+dotted+1bp, Arrows(2mm));
//label(b,"$6 \;\mathrm{m}$",(0,.6),UnFill);
return b;
}

add(xscale(1/gamma)*shift(9.4,0)*barn());
add(shift(4,0)*lizzie());

filldraw(shift(5,0)*star,yellow);
label("event 1",(5.05,0),E);
draw((4.95,0)--(4.45,0), arrow = Arrow(6));

draw(shift(4.3,-.5)*((0,0)--(-.866/2,0)), arrow = Arrow(6));
label("$0.866 c$",(4.3-.866/4,-.5),S);
label("$c$",(4.7,0),N);

label("A",(4,1));