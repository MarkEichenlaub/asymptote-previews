import graph;
unitsize(1cm);

// Skater's body
draw((0, 5)--(0, 2), linewidth(2));

// Skater's head
draw(shift((0, 6))*scale(1, 1.2)*unitcircle, linewidth(2));

// Skater's arms
draw((-2, 4)..(0, 3.5)..(2, 4), linewidth(2));

// Skater's standing leg
draw((0, 2)--(-1, 0), linewidth(2));

// Skater's raised leg
draw((0, 2)--(1.5, 1), linewidth(2));

// Skater's skates
draw((-1.3, -0.2)--(-0.7, 0.2), linewidth(2));
draw((1.2, 0.8)--(1.8, 1.2), linewidth(2));

// Ice
draw((-5, 0)--(5, 0), linewidth(2)+dashed);

draw((-2,3)--(-6,3), arrow = Arrow(6), red+linewidth(2pt));
label("$p$",(-4,3),N,red);

dot((-1,0),12+red);