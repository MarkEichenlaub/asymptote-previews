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
draw(A--B, heavygreen);

// CORRECTED Normal at second hit point (B)
// We rotate the mirror vector (1, -1) by -90 degrees to point "out" and "up"
pair normal2 = rotate(-90)*(1,-1);
draw(shift(B)*((0,0)--0.4*unit(normal2)), dotted);

//second angle of incidence
markscalefactor = 0.04;
draw(anglemark(A,B,B+(-1,-1)),blue);
label("$30^\circ$",B+(-.25,-.18),SW,blue);

//second reflected ray
pair reflected_end = rotate(90+theta)*1.15*normal2;
draw(shift(B)*((0,0)--reflected_end),  arrow = Arrow(6) , heavygreen);

//second angle of reflection
markscalefactor = 0.03;
draw(anglemark(B+(-1,-1),B,reflected_end+B),blue);
label("$30^\circ$",B+rotate(30)*(-.25,-.18)+(.05,.05),SW,blue);