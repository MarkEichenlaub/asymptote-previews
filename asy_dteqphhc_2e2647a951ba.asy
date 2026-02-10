unitsize(1cm);

draw(box((0,0),(1,.5)));
label("A",(.5,.25));

draw(shift(10.25,.55)*xscale(.5)*box((0,0),(1,.5)));
label(xscale(.5)*"G",(10.5,.55+.25));
draw(shift(10,0)*((1.05-.25,.75)--(1.55,.75)), arrow = Arrow(6));
label("$0.995c$", (10+1.25,.75),NE);

draw(shift(.25,1.1)*xscale(.5)*box((0,0),(1,.5)));
label(xscale(.5)*"W, L",(0.5,1.1+.25));
draw(shift(0,1.1)*shift(-.05,.25)*((.25,0)--(-.5,0)), arrow = Arrow(6));
label("$0.995c$",(9.75-10,1.35),NW);

label("event 3",(5,0),S);