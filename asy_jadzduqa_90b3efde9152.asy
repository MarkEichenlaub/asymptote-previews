//TeXeR source: https://artofproblemsolving.com/texer/jadzduqa

unitsize(4cm);

real r = -.97;
real dr = 0.1;
real l = 0.25;

filldraw(unitcircle, RGB(148,120,43));
dot((0,0),black+4);
filldraw(box((r-dr,-l),(r+dr,l)), pink );

draw((r+.01,0)--(-.010,0),black+dotted+1bp,Arrows(2mm));
label("$r_T$",(r/2,0),N);

draw((0.01,0)--(1,0),black+dotted+1bp,Arrows(2mm));
label("$r_L$",(.5,0),S);

real dy = -1.3;

draw(shift(0,dy)*((-.1,-.3)--(.1,-.3)--(0,0)--cycle));
draw(shift(0,dy)*((-1.02,0)--(1.05,0)), linewidth(2pt));

filldraw(shift(.95,0.01+dy)*scale(.1)*box((0,0),(1,1)), lightgray);
filldraw(shift(-1.02,0.01+dy)*scale(.1)*box((0,0),(1,1)), lightgray);
label("$A$",(-.97,.06+dy));
label("$B$",(1,.06+dy));

//draw((0,-.05)--(-.15,-.05),brown+dotted+1bp,Bars(2mm));
//label("$10 \;\mathrm{cm}$ ",(-.15/2,-.07),S, UnFill);

//draw((0,.12)--(.95,.12),brown+dotted+1bp,Bars(2mm));
//label("$60 \;\mathrm{cm}$ ",(.85/2,.12), UnFill);