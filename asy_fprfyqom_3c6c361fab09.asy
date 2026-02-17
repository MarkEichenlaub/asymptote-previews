import three;
size(6cm); defaultpen(fontsize(10pt));
currentprojection = orthographic(2, -10, 2);

real xx=6, d=1, l=1.2, dxx=0.4;

triple x=xx*X, y=l*Y, z=d*Z, dx=dxx*X, o=(0, 0, 0);
draw(z--o--x--x+z--x+y+z--y+z--z--x+z);
draw(x--x+y--x+y+z);
label("$x$", o--x);
label("$d$", z--o);
label("$l$", z+y--z);

draw(shift(dx)*(x--x+z--x+y+z--x+y--cycle), linetype("4 4"));
draw(x--x+dx, linetype("4 4"));
draw(x+y--x+y+dx, linetype("4 4"));
draw(x+z--x+z+dx, linetype("4 4"));
draw("$\Delta x$", x+y+z+dx--x+y+z, linetype("4 4"));