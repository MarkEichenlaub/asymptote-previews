unitsize(5cm);

path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
(scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
(scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
(scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
(scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.05)*rotate(15)*star;

real gamma = 2;

picture lizzie(){
picture l;
draw(l, box((-1,-.25),(1,.25)));
label(l,xscale(1/gamma)*"L",(0,-.15));
draw(l,(-1+.05,0)--(-1+.05+.5,0), arrow = Arrow(6));
draw(l,(-1,-.35)--(1,-.35),brown+dotted+1bp,Arrows(2mm));
label(l,"$5 \;\mathrm{m}$",(0,-.35),UnFill);
return l;
}

picture barnclosed(){
picture b;
draw(b, (-.6,-.4)--(-.6,-.5)--(.6,-.5)--(.6,.5)--(-.6,.5)--(-.6,.4));
draw(b, (-.62,-.4)--(-.62,.4),linewidth(2pt));
label(b,"barn",(0,-.5),S);
draw(b,(-.6,.6)--(.6,.6), brown+dotted+1bp, Arrows(2mm));
label(b,"$6 \;\mathrm{m}$",(0,.6),UnFill);
return b;
}

add(shift(4,0)*xscale(1/gamma)*lizzie());
add(shift(3.9,0)*barnclosed());

filldraw(shift(4.5,0)*star,yellow);
draw(shift(4.45,0)*xscale(1/.866*.25)*((0,0)--(-1,0)), arrow = Arrow(6));
label("event 1",(4.55,0),E);
label("$c$",(4.3,0),N);
label("$0.866 c$",(3.7,0),N);