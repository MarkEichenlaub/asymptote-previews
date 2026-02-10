unitsize(25);
defaultpen(fontsize(8.5pt));
real x = 0;
real y = -0.3;
real z = 15;
draw((0.5+x+z,-1)--(0+x+z,1)--(-0.5+x+z,-1)--cycle);
draw((z-8,1)--(0+z,1),linewidth(1.75));
draw((2+z,1)--(0+z,1), linewidth(1.75));
filldraw(circle((2+z,1),0.35),lightblue); 
filldraw(circle((z-8,1),0.35),lightblue);

draw((-.1+z,2)--(z-8,2));
draw((-.1+z,2.1)--(z-.1,1.9));
draw((-8+z,2.1)--(z-8,1.9));
draw((-.1+z,2.1)--(z-.1,1.9));

draw((2+z,2)--(z+.1,2));
draw((2+z,2.1)--(z+2,1.9));
draw((.1+z,2.1)--(z+.1,1.9));

label("$8\mathrm{~m}$", (z-4,2.5));
label("$2\mathrm{~m}$", (z+1,2.5));

label("$1\mathrm{~kg}$", (z-8,1));
label("$1\mathrm{~kg}$", (2+z,1));