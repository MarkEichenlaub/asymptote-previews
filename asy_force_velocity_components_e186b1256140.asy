unitsize(5cm);

real thetav = 60;
real thetaf = 100;

pair v = dir(thetav)*1;
pair f = dir(thetaf)*.5;

dot((0,0), 10+black);
draw((0,0)--v, arrow = Arrow(6),blue);
label("$\vec{v}$",v*1.05,blue);
draw((0,0)--f, arrow = Arrow(6),red);
label("$\vec{F}_{\rm net}$", f*1.2,red);

draw((0,0)--v*.5*Cos(thetaf - thetav), red+dotted+linewidth(3pt));
label("$F_{\mathrm{net};\parallel}$",(v*.25*Cos(thetaf - thetav)), SE,red);

draw(v*.5*Cos(thetaf - thetav)--f, red+dotted+linewidth(3pt));
label("$F_{\mathrm{net};\perp}$",v*.5*Cos(thetaf - thetav)/2 + f/2, NE,red);

label("Force does positive work, object gets faster",(0,-.2),S);

real dy = -1.5;

real thetav = 60;
real thetaf = 200;

pair v = dir(thetav)*1;
pair f = dir(thetaf)*.5;

dot((0,dy), 10+black);
draw(shift(0,dy)*((0,0)--v), arrow = Arrow(6),blue);
label("$\vec{v}$",v*1.05+(0,dy),blue);
draw(shift(0,dy)*((0,0)--f), arrow = Arrow(6),red);
label("$\vec{F}_{\rm net}$", f + (0,dy),NW,red);

draw(shift(0,dy)*((0,0)--v*.5*Cos(thetaf - thetav)), red+dotted+linewidth(3pt));
label("$F_{\mathrm{net};\parallel}$",(v*.25*Cos(thetaf - thetav)) + (0,dy), SE,red);

draw(shift(0,dy)*(v*.5*Cos(thetaf - thetav)--f), red+dotted+linewidth(3pt));
label("$F_{\mathrm{net};\perp}$",v*.5*Cos(thetaf - thetav)/2 + f/2 + (0,dy), SW,red);

label("Force does negative work, object gets slower",(0,-.4+dy),S);