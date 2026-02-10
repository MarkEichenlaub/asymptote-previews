unitsize(1.5cm);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(5.5,2)*xscale(.5)*clock(52*180/100));
label(xscale(.5)*"Turnaround Clock",(5.5,2.1),N);
draw(shift(5.3,2)*((0,0)--(-.5,0)), arrow = Arrow(6));

add(shift(2.75,2)*xscale(.5)*clock(12.4*180/100));
label(xscale(.5)*"Alex's Clock",(2.75,2.1),N);
draw(shift(-.2+2.75,2)*((0,0)--(-.5,0)), arrow = Arrow(6));

draw(shift(.25+2.3,0)*xscale(.5)*box((0,0),(1,.5)));
label(xscale(.5)*"A",(.5+2.3,.25));
draw(shift(.1+2.3,.25)*((0,0)--(-.5,0)), arrow = Arrow(6));

draw(shift(5,.55)*box((0,0),(1,.5)));
label("G, L",(5.5,.55+.25));

draw(shift(5+.75/2+.1,1.1)*xscale(.35)*box((0,0),(1,.5)));
label(xscale(.35)*"W",(5.5+.1,1.1+.25));
draw(shift(5+.75/2,1.1)*shift(-.05,.25)*((0,0)--(-.52,0)), arrow = Arrow(6));
//label("$0.995c$",(9.75-5,1.35),NW);

label("event 2, Grogg's Frame",(4,0),S);

draw(shift(5.75,.95)*((0,0)--(0,.4)), arrow = Arrow(6), red);