draw(scale(.2)*unitcircle);
draw(shift(0,1.5)*scale(.2)*unitcircle);
label("$+$",(0,0));
label("$-$",(0,1.5));
label("$A$",(0,1.7),N);
label("$B$",(0,-.3),S);

draw(shift(5.1,.75)*unitcircle);
label("$-Q$",(5.1,.75));

draw((.2,0){1,0}..(4,.75)..{-1,0}(.2,1.5));