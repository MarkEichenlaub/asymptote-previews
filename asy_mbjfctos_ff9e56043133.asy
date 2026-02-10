unitsize(2cm);
draw(box((0,0),(1,.5)));
label("A",(.5,.25));

draw(box((3,0),(4,.5)));
label("L",(3.5,.25));
draw((4.05,.25)--(4.55,.25), arrow = Arrow(6));
label("$v = 0.995c$", (4.25,.25),NE);
label("outbound trip",(2,0),S);

real dy = -2;

draw(shift(0,dy)*box((0,0),(1,.5)));
label("A",(.5,.25+dy));

draw(shift(0,dy)*box((4,0),(5,.5)));
label("L",(4.5,.25+dy));
draw(shift(0,dy)*((3.95,.25)--(3.45,.25)), arrow = Arrow(6));
label("$v = 0.995c$", (3.65,.25+dy),NW);
label("return trip",(2,dy),S);