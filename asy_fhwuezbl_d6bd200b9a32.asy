unitsize(3cm);

real gamma = 2;

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
//draw(b, (-.6,-.5)--(.6,-.5)--(.6,.5)--(-.6,.5));
draw(b, (-.6,-.5)--(.6,-.5));
draw(b, (-.6,.5)--(.6,.5));
label(b,xscale(1/gamma)*"tunnel",(0,-.5),S);
draw(b,(-.6,.6)--(.6,.6), brown+dotted+1bp, Arrows(2mm));
label(b,"$3 \;\mathrm{m}$",(0,.6),UnFill);

return b;
}

add(lizzie());

add(xscale(1/gamma)*shift(5,0)*barn());
draw((2.2,0)--(1.95,0), arrow = Arrow(6));