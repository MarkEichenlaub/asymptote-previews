unitsize(3cm);
draw(unitcircle);

pen brwn = RGB(166, 123, 7);

real theta = 30;
draw(shift(dir(-90-theta))*(2*dir(180-theta)--2*dir(-theta)), brwn+linewidth(2pt));

draw((0,0)--(0,-1.5), arrow = Arrow(6), red);
label("$mg$",(0,-1.5),S,red);

draw(shift(dir(-90-theta))*rotate(-theta)*((0,0)--(0,1.5)), arrow = Arrow(6), red);
label("$N$",dir(-90-theta) + rotate(-theta)*(0,1.5), NE, red);
draw(shift(dir(-theta))*((0,0)--dir(-theta)), arrow = Arrow(6), blue);
label("$\vec{v}$",2*dir(-theta),SE,blue);

draw(shift(dir(-90-theta)+2*dir(-theta))*((-2,0)--(0,0)), dotted);

draw(arc(dir(-90-theta)+2*dir(-theta), .7,-180,-180-theta));
label("$\theta$",dir(-90-theta)+2*dir(-theta)+.75*dir(-180-theta/2));