unitsize(1cm);

draw(unitcircle);

fill((-5,1)--(0,1)--arc((0,0),1,90,270)--(-5,-1)--cycle, lightgray);

draw((1.1,0)--(2,0), arrow = Arrow(6));

fill(shift(-3,0)*xscale(.3)*unitcircle, gray);
draw(shift(-3,0)*xscale(.3)*unitcircle, dotted);
label("$A$",(-3,0));

draw((-5,-1.2)--(0,-1.2),brown+dotted+1bp,Arrows(2mm));
label("$\ell$",(-2.5,-1.2), UnFill);