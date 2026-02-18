import olympiad;
import geometry;

unitsize(4cm);

real theta = -60;
pair A = (-.5,-.5);
pair vertex = (0,0);

// Mirrors
draw((-1,-1)--vertex--(1,-1), linewidth(2pt));

// Normal at first hit point (A)
pair normal1 = (1,-1);
draw(shift(A)*((0,0)--normal1), dotted);

// Laser 1: Incident ray
pair incident_start = A + rotate(theta)*normal1;
draw(incident_start--A, heavygreen);

//angle of reflection marker
markscalefactor = 0.04;
//draw(anglemark(A+(1,-1),A,A+rotate(-theta)*(1,-1)),red);

// --- CALCULATION FOR REFLECTION ---
pair reflected_dir = rotate(-theta)*normal1;

// Intersection with the second mirror segment (0,0) to (1,-1)
pair B = extension(A, A + reflected_dir, vertex, (1,-1));

// Laser 2: Reflected ray hitting the second mirror
draw(A--B, heavygreen, arrow = Arrow(6));

//right angle at first normal
markscalefactor = 0.02;
//draw(rightanglemark(A + (1,-1),A,A+(1,1)), red);

// CORRECTED Normal at second hit point (B)
// We rotate the mirror vector (1, -1) by -90 degrees to point "out" and "up"
pair normal2 = rotate(-90)*(1,-1);
draw(shift(B)*((0,0)--0.4*unit(normal2)), dotted);

//triangle
draw(A--(0,0)--B--cycle, red+linewidth(2pt));
label("$60^\circ$",A+(.22,.12),red);
label("$90^\circ$",(0,0),1.8*S,red);
label("C",B+(-.03,.03),2*W,red);


// Normal display
real normalLength = -0.4;            // length of dotted normal lines

// Angle mark
real angleMarkRadius = 0.25;        // radius of the blue angle arc

// Toggles
bool showAngleMark = true;         // blue angle arc + "?" label

// Pens
pen mirrorPen   = linewidth(2pt);
pen laserPen    = heavygreen;
pen normalPen   = dotted;
pen anglePen    = blue;
pen rightAnglePen = red;

// ===== DEFINE OBJECTS =====

// Mirror endpoints
pair mirrorL = (-1,-1);
pair mirrorR = (1,-1);

// Normal at first hit point (perpendicular to left mirror, pointing outward)
pair normal1 = (1,-1);

// Incident ray start
pair incident_start = A + rotate(theta)*normal1;

// Reflected direction off first mirror
pair reflected_dir = rotate(-theta)*normal1;

// Second hit point: intersection of reflected ray with right mirror
pair B = extension(A, A + reflected_dir, vertex, mirrorR);

// Normal at second hit point
// Rotate mirror direction (1,-1) by +90° to point outward/upward
pair normal2 = rotate(90)*(1,-1);
pair normalBase = B;
pair normalTip  = B + normalLength*unit(normal2);

bool showAngleMark = true;  
// ===== ANGLE MARK (between normal and incoming ray at B) =====
if (showAngleMark) {
    // Directions from B toward the normal tip and back along the ray to A
    real angNormal = degrees(unit(normalTip - B));
    real angRay    = degrees(unit(A - B));

    // Sweep CCW from normal to ray (the smaller angle between them)
    real ang1 = angNormal; // start from normal direction
    real ang2 = angRay;    // end at ray direction

    // Draw arc from normal to ray (CCW = shorter arc on the left side)
    draw(arc(B, angleMarkRadius, ang1, ang2), anglePen);

    // Label at the bisector of the arc
    real angMid = (ang1 + ang2) / 2;
    pair labelPos = B + 1.5*angleMarkRadius * dir(angMid);
    //label("$?$", labelPos, anglePen);
}