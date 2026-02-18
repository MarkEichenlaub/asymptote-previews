import olympiad;

// ===== CONFIGURATION =====
unitsize(4cm);

// Geometry
real theta = -60;                   // incident angle (negative = from left)
pair A = (-.5,-.5);                 // first hit point (on left mirror)
pair vertex = (0,0);                // mirror vertex

// Normal display
real normalLength = 0.4;            // length of dotted normal lines

// Angle mark
real angleMarkRadius = 0.15;        // radius of the blue angle arc

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

// ===== DRAW =====

// Mirrors
draw(mirrorL--vertex--mirrorR, mirrorPen);

// Right-angle mark at vertex
markscalefactor = 0.02;
draw(rightanglemark(mirrorL, vertex, mirrorR), rightAnglePen);

// Incident ray (laser -> first mirror)
draw(incident_start--A, laserPen);

// Reflected ray (first mirror -> second mirror)
draw(A--B, laserPen, arrow=Arrow(6));

// Dotted normal at second hit point
draw(normalBase--normalTip, normalPen);

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
    pair labelPos = B + 2.0*angleMarkRadius * dir(angMid);
    label("$?$", labelPos, anglePen);
}