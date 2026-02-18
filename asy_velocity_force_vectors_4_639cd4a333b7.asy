picture pic;

picture ex1;
picture ex2;
picture ex3;
picture ex4;
picture ex5;
picture ex6;

currentpicture = ex1;
unitsize(2cm);
real thetav = 20;
real thetaf = 110;
dot((0,0), 10+black);
draw((0,0)--dir(thetav)*1, arrow = Arrow(6),blue);
draw((0,0)--dir(thetaf)*.5, arrow = Arrow(6), red);
label("$\vec{v}$",dir(thetav)*1.1,blue);
label("$\vec{F}_{\rm net}$",dir(thetaf)*.7, red);
label("(A)",(0,-.3),S);

currentpicture = ex2;
unitsize(2cm);
real thetav = 90;
real thetaf = 110;
dot((0,0), 10+black);
draw((0,0)--dir(thetav)*.6, arrow = Arrow(6),blue);
draw((0,0)--dir(thetaf)*.8, arrow = Arrow(6), red);
label("$\vec{v}$",dir(thetav)*.8,blue);
label("$\vec{F}_{\rm net}$",dir(thetaf)*1, red);
label("(B)",(0,-.3),S);

currentpicture = ex3;
unitsize(2cm);
real thetav = 210;
real thetaf = -20;
dot((0,0), 10+black);
draw((0,0)--dir(thetav)*1, arrow = Arrow(6),blue);
draw((0,0)--dir(thetaf)*.5, arrow = Arrow(6), red);
label("$\vec{v}$",dir(thetav)*1.1,blue);
label("$\vec{F}_{\rm net}$",dir(thetaf)*.7, red);
label("(C)",(0,-.3),S);

currentpicture = ex4;
unitsize(2cm);
real thetav = 70;
real thetaf = 250;
dot((0,0), 10+black);
draw((0,0)--dir(thetav)*.7, arrow = Arrow(6),blue);
draw((0,0)--dir(thetaf)*1, arrow = Arrow(6), red);
label("$\vec{v}$",dir(thetav)*.85,blue);
label("$\vec{F}_{\rm net}$",dir(thetaf)*1.1, red);
label("(D)",(0,-.3),S);

currentpicture = ex5;
unitsize(2cm);
real thetav = 210;
real thetaf = 300;
dot((0,0), 10+black);
draw((0,0)--dir(thetav)*1, arrow = Arrow(6),blue);
draw((0,0)--dir(thetaf)*.5, arrow = Arrow(6), red);
label("$\vec{v}$",dir(thetav)*1.1,blue);
label("$\vec{F}_{\rm net}$",dir(thetaf)*.7, red);
label("(E)",(0,-.3),S);

currentpicture = ex6;
unitsize(2cm);
real thetav = 120;
real thetaf = 60;
dot((0,0), 10+black);
draw((0,0)--dir(thetav)*.8, arrow = Arrow(6),blue);
draw((0,0)--dir(thetaf)*.8, arrow = Arrow(6), red);
label("$\vec{v}$",dir(thetav)*.95,blue);
label("$\vec{F}_{\rm net}$",dir(thetaf)*.95, red);
label("(F)",(0,-.3),S);

real dx = 2.5;
real dy = -2;

currentpicture = pic;
unitsize(2cm);
add(ex1);
add(shift(1*dx,0*dy)*ex2);
add(shift(2*dx,0*dy)*ex3);
add(shift(0*dx,1*dy)*ex4);
add(shift(1*dx,1*dy)*ex5);
add(shift(2*dx,1*dy)*ex6);