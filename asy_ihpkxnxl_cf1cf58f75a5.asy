size(10cm);

// Define colors for the orbits
pen orbitColor1 = blue;
pen orbitColor2 = red;
pen orbitColor3 = deepgreen;

// Radii for the orbits
real r1 = 1;
real r2 = 2;

// Draw the sun as a dot
label("$\odot$",(0,0));

// Draw the first circular orbit (r1)
draw(circle((0, 0), r1), orbitColor1);
label("$1$", (r1 * Cos(140), r1 * Sin(140)), NW, blue);

// Draw the second circular orbit (r2)
draw(circle((0, 0), r2), orbitColor3);
label("$3$", (r2 * Cos(90), r2 * Sin(90)), NW, deepgreen);

// Draw the radii of the circular orbits
draw(rotate(30)*((0, 0) -- (r1, 0)), gray+dotted);
label("$r_1$", rotate(30)*(r1 / 2, 0), S);

draw(rotate(-30)*((0, 0) -- (r2, 0)), gray+dotted);
label("$r_3$", rotate(-30)*(r2*.65, 0), S);

// Draw the elliptical orbit
real a = (r1 + r2) / 2;  // Semi-major axis
real e = (r2 - r1) / (r2 + r1);  // Eccentricity
real b = a * sqrt(1 - e^2);  // Semi-minor axis
pair focus1 = (-a * e, 0);  // Position of the sun (focus) in the ellipse

// Draw the ellipse
draw(shift(focus1) * scale(a, b) * unitcircle, orbitColor2);
label("$2$", shift(focus1) * (a * Cos(80), b * Sin(80)), N, red);