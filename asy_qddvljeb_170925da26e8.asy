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
real back = -(2.68/5*2-1);
draw(l, box((back,-.25),(1,.25)));
label(l,"L",((back+1)/2,0));
draw(l,(back,-.35)--(1,-.35),brown+dotted+1bp,Arrows(2mm));
label(l,"$2.68 \;\mathrm{m}$",((back + 1)/2,-.35),UnFill);
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