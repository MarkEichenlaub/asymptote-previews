unitsize(8cm);

real gamma = 2;

picture lizzie(){
picture l;
draw(l, box((-1,-.25),(1,.25)));
label(l,"L");
//draw(l,(1.05,.125)--(1.55,.125), arrow = Arrow(6));
draw(l,(-1,-.35)--(1,-.35),brown+dotted+1bp,Arrows(2mm));
label(l,"$1.34 \;\mathrm{m}$",(0,-.35),UnFill);
return l;
}

picture barn(){
picture b;
draw(b, (-.6,-.4)--(-.6,-.5)--(.6,-.5)--(.6,.5)--(-.6,.5)--(-.6,.4));
draw(b, (-.62,-.4)--(-.62,.4),linewidth(2pt));
label(b,"barn",(0,-.5),S);
draw(b,(-.6,.6)--(.6,.6), brown+dotted+1bp, Arrows(2mm));
label(b,"$3 \;\mathrm{m}$",(0,.6),UnFill);
return b;
}

add(xscale(1/gamma)*shift(9.4,0)*barn());
add(shift(4.865,0)*xscale(1.34/10)*lizzie());

draw(shift(4.68,0)*xscale(.866)*((0,0)--(-.5,0)), arrow = Arrow(6));
label("$0.866 c$",(4.52,0),N);

draw(shift(4.3,-.5)*((0,0)--(-.866/2,0)), arrow = Arrow(6));
label("$0.866 c$",(4.3-.866/4,-.5),S);

label("A",(5,1));