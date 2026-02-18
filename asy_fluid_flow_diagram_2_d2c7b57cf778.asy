unitsize(7cm);

fill((0,0)--(1.5,0)--(1.5,.2)--(0,.2)--cycle, cyan);

draw((0,0)--(1,0),linewidth(2pt));
draw((0,.2)--(1,.2),linewidth(2pt));

draw((1,.2)--(1.5,.2)--(1.5,0)--(1,0), dotted+red);

label("$V$",(1.25,.1));

label("time: $\Delta t$",(.6,-.1));

draw((1,-.05)--(1.5,-.05),brown+dotted+1bp,Arrows(2mm));
label("$\ell$",(1.25,-.05), UnFill);

draw(shift(1,.1)*xscale(.3)*scale(.1)*unitcircle);
label("$A$",(1,.1));