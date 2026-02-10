//TeXeR source: https://artofproblemsolving.com/texer/kcianqxj

unitsize(5cm);
draw(unitcircle);

real r1 = -0.45;
real r2 = 0.9;
real r = 0.07;

real theta = 70;

dot((0,0),black+4);

filldraw(rotate(theta)*shift(r1,0)*scale(r)*unitcircle,lightgray);
filldraw(rotate(theta)*shift(r2,0)*scale(r)*unitcircle,lightgray);
label("$A$",rotate(theta)*(r1,0));
label("$B$",rotate(theta)*(r2,0));

draw(rotate(theta)*((.03,0)--(r2-r,0)),brown+dotted+1bp,Arrows(2mm));
//label("$r_B$",rotate(theta)*((r2-r)/2,0), UnFill);

draw(rotate(theta)*((-.03,0)--(r1+r,0)),brown+dotted+1bp,Arrows(2mm));
//label("$r_A$",rotate(theta)*((r1+r)/2,0), UnFill);

draw(arc((0,0),r2,0,theta-3), dotted);
draw(arc((0,0),-r1,180,180+theta-5),dotted);

draw((-1,0)--(1,0),dashed);

draw(arc((0,0),.3,0,theta));
label("$\theta$",dir(theta/2)*.35);

draw(arc((0,0),.2,180,180+theta));
label("$\theta$",dir(180+theta/2)*.25);