import geometry;
import olympiad;

unitsize(4cm);

real theta = -60;
pair A = (-.5,-.5);
pair vertex = (0,0);

// Mirrors
draw((-1,-1)--vertex--(1,-1), linewidth(2pt));

// Normal at first hit point (A)
pair normal1 = (1,-1);
//draw(shift(A)*((0,0)--normal1), dotted);

// Laser 1: Incident ray
pair incident_start = A + rotate(theta)*normal1;
draw(incident_start--A, heavygreen);

// --- CALCULATION FOR REFLECTION ---
pair reflected_dir = rotate(-theta)*normal1;

// Intersection with the second mirror segment (0,0) to (1,-1)
pair B = extension(A, A + reflected_dir, vertex, (1,-1));

// Laser 2: Reflected ray hitting the second mirror
draw(A--B, heavygreen, arrow = Arrow(6));

// CORRECTED Normal at second hit point (B)
// We rotate the mirror vector (1, -1) by -90 degrees to point "out" and "up"
pair normal2 = rotate(-90)*(1,-1);
draw(shift(B)*((0,0)--0.4*unit(normal2)), dotted);

//triangle
draw(A--(0,0)--B--cycle, red+linewidth(2pt));
label("A",A+(.16,.1),red);
label("B",(0,0),1.5*S,red);
label("C",B+(-.03,.03),2*W,red);

// Normal at first hit point (A)
pair normal1 = (1,-1);
draw(shift(A)*((0,0)--normal1), dotted);

//angle of reflection marker
markscalefactor = 0.03;
draw(anglemark(A+(1,-1),A,A+rotate(-theta)*(1,-1)),blue);

label("$60^\circ$",(-.5,-.5)+(.25,-.05),SE,blue);