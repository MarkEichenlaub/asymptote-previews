unitsize(3cm);
draw(unitcircle);

pen brwn = RGB(166, 123, 7);

real theta = 30;
draw(shift(dir(-90-theta))*(2*dir(180-theta)--2*dir(-theta)), brwn+linewidth(2pt));
draw(shift(dir(-theta))*((0,0)--dir(-theta)), arrow = Arrow(6), blue);
label("$\vec{v}$",2*dir(-theta),SE,blue);