size(7cm);
defaultpen(fontsize(10pt));

draw(unitcircle);
draw(shift(6,0)*scale(0.3)*unitcircle);
dot((-1.5,0));
label("A",(-1.5,0),S);
dot((1.5,0));
label("B",(1.5,0),S);
dot((3,0));
label("C",(3,0),S);
dot((4.5,0));
label("D",(4.5,0),S);
dot((7,0));
label("E",(7,0),S);

label("Earth",(0,1),N);
label("Moon",(6,.3),N);