//TeXeR source: https://artofproblemsolving.com/texer/qkzejbkd
unitsize(2cm);

real theta = -35;
pair A = (-.5,-.5);
pair vertex = (0,0);

// Mirrors
draw((-1,-1)--vertex--(1,-1), linewidth(2pt));

// Normal at first hit point (A)
pair normal1 = (1,-1);

// Laser 1: Incident ray
pair incident_start = A + rotate(theta)*normal1*5;

// --- CALCULATION FOR REFLECTION ---
pair reflected_dir = rotate(-theta)*normal1;

// Intersection with the second mirror segment (0,0) to (1,-1)
pair B = extension(A, A + reflected_dir, vertex, (1,-1));

//angle of incidence
markscalefactor = 0.04;
draw(anglemark(A+normal1,A,B),red);
label("$x$",A + (.33,-.18),red+fontsize(8pt));

//angle of incidence
markscalefactor = 0.04;
draw(anglemark(incident_start,A,A+normal1),red);
label("$x$",A + (.2,-.3),red+fontsize(8pt));

//right angle at first normal
markscalefactor = 0.02;
//draw(rightanglemark(A + (1,-1),A,A+(1,1)), red);

// Laser 2: Reflected ray hitting the second mirror
draw(A--B, heavygreen, arrow = Arrow(6));

// CORRECTED Normal at second hit point (B)
// We rotate the mirror vector (1, -1) by -90 degrees to point "out" and "up"
pair normal2 = rotate(-90)*(1,-1);
draw(shift(B)*((0,0)--0.4*unit(normal2)), dotted);

draw(incident_start--A, heavygreen);
draw(shift(A)*((0,0)--normal1), dotted);

markscalefactor = 0.025;
//draw(anglemark(B,A,vertex),red);
//label("$90^\circ - x$",A + (.37,.06),red);

//draw(anglemark(vertex,B,A),red);
//label("$x$",B + (-.24,.11),red);

//second reflected ray
pair reflected_end = rotate(90+theta-10)*5*normal2;
draw(shift(B)*((0,0)--reflected_end),  arrow = Arrow(6) , heavygreen);

//triangle
//draw(A--(0,0)--B--cycle, red+linewidth(2pt));
markscalefactor = 0.015;
//draw(rightanglemark(A,vertex,B), red);

//second angle of incidence
markscalefactor = 0.025;
draw(anglemark(A,B,B+(-1,-1)),red);
label("$90^\circ - x$", B + (-.45,-.1) , red+fontsize(8pt));

//second angle of reflection
markscalefactor = 0.04;
draw(anglemark(B+(-1,-1),B,reflected_end+B),red);
label("$90^\circ - x$", B + (-.12,-.37) , red+fontsize(8pt));

//right angle at second reflection
markscalefactor = 0.015;
//draw(rightanglemark(B + (-1,-1),B,vertex),red);

label("D",(.62,-6.5),red);
// Angle mark at point D (intersection of incoming and outgoing beams)
pair D_pt = extension(incident_start, A, B, B + reflected_end);
markscalefactor = 0.09;
draw(anglemark(B, D_pt, A), red);