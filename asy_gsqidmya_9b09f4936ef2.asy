fill(scale(.2)*unitcircle);
fill(shift(1,0)*scale(.1)*unitcircle);
dot((.7,0));
label("Sun",(0,-.2),S);
label("Earth",(1,-.1),S);
label("satellite",(.7,0),S);

draw((0,.1)--(1,.1),dotted+gray);
label("$R$",(.5,.1),N);
draw((0,0)--(.7,0),dotted+gray);
label("$r$",(.4,0),S);