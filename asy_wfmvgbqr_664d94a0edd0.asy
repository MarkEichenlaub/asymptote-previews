real R=.5;      // tube radius 
real L=4;      // tube length
real flatten = .3;

fill(xscale(flatten)*arc((0,0),R,90,270)--(L,-R)--(xscale(flatten)*arc((L/flatten,0),R,-90,90))--cycle, cyan); //water; needs to go in back, so drawing it first

draw(xscale(flatten)*circle((0,0),R)); //front of tube
draw(shift(L,0)*xscale(flatten)*arc((0,0),R,-90,90)); //back of tube, solid part
draw(shift(L,0)*xscale(flatten)*arc((0,0),R,90,270), dotted); //back of tube, dotted part
draw((0,R)--(L,R)); // top
draw((0,-R)--(L,-R)); //bottom

draw((0,-2R)--(0,4R),   arrow = Arrow(6) ); //rotation axis
label("$\vec{\omega}$",(0,4R),N);

draw(xscale(flatten)*circle((L*1.5,0),R), dotted); //a cross section somewhere along the tube used to illustrate distance from the axis
draw((0,-R-.2)--(L*flatten*1.5,-R-.2),brown+dotted+1bp,Arrows(2mm));
label("$\ell$",(L*flatten*1.5/2,-R-.2), UnFill);