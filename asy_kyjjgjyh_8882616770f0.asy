unitsize(4cm);

draw((0,0)--(1,0), MidArrow(6));
draw((1,0)--(1,1), MidArrow(6));
draw((1,1)--(0,1), MidArrow(6));
draw((0,1)--(0,0), MidArrow(6));

dot("start",(0,0),SW);
label("$150 \;\mathrm{km}$",(.5,0),S);

draw((1.3,.8)--(1.3,1.1), Arrow(6));
label("N",(1.3,1.1),N);

draw((1.3,.1)--(1.7,.1), Arrow(6));
label("wind",(1.3,.1),SE);
label("$20.0 \;\mathrm{m/s}$",(1.3,0),SE);