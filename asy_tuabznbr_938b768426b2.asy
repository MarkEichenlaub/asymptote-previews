unitsize(4cm);

real theta = -35;
pair A = (-.5,-.5);
pair vertex = (0,0);

// Mirrors
draw((-1,-1)--vertex--(1,-1), linewidth(2pt));

// Normal at first hit point (A)
pair normal1 = (1,-1);

// Laser 1: Incident ray
pair incident_start = A + rotate(theta)*normal1;

// --- CALCULATION FOR REFLECTION ---
pair reflected_dir = rotate(-theta)*normal1; 

// Intersection with the second mirror segment (0,0) to (1,-1)
pair B = extension(A, A + reflected_dir, vertex, (1,-1));


//angle of indcidence
markscalefactor = 0.04;
draw(anglemark(A+normal1,A,B),red);
label("$x$",A + (.33,-.18),red);


// Laser 2: Reflected ray hitting the second mirror
draw(A--B, heavygreen, arrow = Arrow(6));

// CORRECTED Normal at second hit point (B)
// We rotate the mirror vector (1, -1) by -90 degrees to point "out" and "up"
pair normal2 = rotate(-90)*(1,-1); 
draw(shift(B)*((0,0)--0.4*unit(normal2)), dotted);

draw(incident_start--A, heavygreen);
draw(shift(A)*((0,0)--normal1), dotted);

markscalefactor = 0.025;
draw(anglemark(B,A,vertex),red);
label("$90^\circ - x$",A + (.37,.06),red);

draw(anglemark(vertex,B,A),red);
label("$C$",B + (-.24,.11),red);

//second reflected ray
pair reflected_end = rotate(90+theta)*1.15*normal2;
draw(shift(B)*((0,0)--reflected_end),  arrow = Arrow(6) , heavygreen);

//triangle
draw(A--(0,0)--B--cycle, red+linewidth(2pt));
markscalefactor = 0.015;
draw(rightanglemark(A,vertex,B), red);