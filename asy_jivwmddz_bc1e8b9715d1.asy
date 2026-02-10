unitsize(1cm);

path tri = scale(.9)*rotate(180)*((0,1)--dir(210)--dir(330)--cycle);

fill(box((-4,0),(6,2)),brown);

draw(shift(4.9,1.2)*tri, linewidth(2pt));
draw(shift(2.9,1.2)*tri, linewidth(2pt));
draw(shift(6.05,1)*((0,0)--(1,0)), arrow = Arrow(6), brown);
label("$v$",(6.55,1),N,brown);