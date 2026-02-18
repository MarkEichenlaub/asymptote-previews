unitsize(3cm);
draw(unitcircle);

draw(shift(1,1)*((0,0)--(.3,0)), arrow = Arrow(6));
label("$\hat{x}$",(1.3,1),E);
draw(shift(1,1)*((0,0)--(0,.3)), arrow = Arrow(6));
label("$\hat{y}$",(1,1.3),N);

pen brwn = RGB(166, 123, 7);

real theta = 30;
draw(shift(dir(-90-theta))*(2*dir(180-theta)--2*dir(-theta)), brwn+linewidth(2pt));

draw((0,0)--(0,-1.5), arrow = Arrow(6), red);
label("$mg$",(0,-1.5),S,red);

draw(shift(dir(-90-theta))*rotate(-theta)*((0,0)--(0,1.5)), arrow = Arrow(6), red);
//draw(shift(dir(-90-theta))*rotate(theta)*((0,0)--dir(-theta)*Sin(theta)*1.5), red+dotted);
//label("$N_x$", shift(-.7,-.9)*shift(dir(-90-theta))*rotate(theta)*dir(-theta)*Sin(theta)*0.75, S, red);
//label("$N_y$",(.4,-.3),red);
//draw(shift(dir(-90-theta))*shift(rotate(theta)*dir(-theta)*Sin(theta)*1.5)*((0,0)--(0,1.5)*Cos(theta)), red+dotted);
label("$N$",dir(-90-theta) + rotate(-theta)*(0,1.5), NE, red);
draw(shift(dir(-theta))*((0,0)--dir(-theta)), arrow = Arrow(6), blue);
label("$\vec{v}$",2*dir(-theta),SE,blue);