// laser_point_circle.asy
// A laser at the center of a circle sends a beam to the edge.
// The beam traces out the full circumference as the laser rotates 360 degrees.
// Labels show radius r = 35 m and circumference C = 2*pi*r.
// Origin (0,0) at center of the circle (laser position).

import graph;

// ============================================================
// CONFIGURATION -- all tweakable parameters
// ============================================================

size(220);

// --- Circle ---
real circleR = 4.0;            // drawing radius (not physical 35 m)

// --- Beam ---
real beamAngle = 55;           // angle of beam from horizontal (degrees)

// --- Laser device ---
real laserW = 0.65;            // laser box width
real laserH = 0.45;            // laser box height

// --- Hit dot ---
real dotR = 0.14;              // radius of dot at beam endpoint

// --- Circumference arrows ---
real arrowArcR = circleR + 0.35;  // radius of the sweep arrow arcs
real arcGap = 22;              // degrees of gap around the beam for each arc
real arcPad = 3;               // padding from arc ends for arrowhead clearance

// --- Label placement ---
real rLabelOffset = 0.3;       // perpendicular offset of "r" label from beam
real cLabelOffset = 0.55;      // radial offset of "C" label outside circle

// --- Pens ---
pen circlePen  = gray(0.35) + linewidth(1.2);
pen beamPen    = red + linewidth(1.4);
pen arrowPen   = gray(0.2) + linewidth(1.0);
pen devicePen  = gray(0.2) + linewidth(0.8);
pen labelPen   = fontsize(10);
pen rLabelPen  = fontsize(10);
pen cLabelPen  = fontsize(10);
real aSize     = 5;

// --- Toggles ---
bool showLabels = true;
bool showDevice = true;

// ============================================================
// DEFINE OBJECTS
// ============================================================

// --- Circle center (laser position) ---
pair center = (0, 0);

// --- Beam endpoint on circle ---
pair beamEnd = circleR * dir(beamAngle);

// --- Sweep arrow arcs ---
// Two arcs on opposite sides of the beam, each with a single arrowhead,
// both indicating counterclockwise rotation.
// Arc 1: starts just past the beam (CCW side), sweeps ~160 degrees
real arc1Start = beamAngle + arcGap;
real arc1End   = beamAngle + 180 - arcGap;
// Arc 2: starts on the opposite side, sweeps ~160 degrees back toward beam
real arc2Start = beamAngle + 180 + arcGap;
real arc2End   = beamAngle + 360 - arcGap;

// ============================================================
// DRAW
// ============================================================

// --- Circle (the path traced by the laser point) ---
draw(circle(center, circleR), circlePen);

// --- Laser beam (center to edge) ---
draw(center -- beamEnd, beamPen);

// --- Dot at beam endpoint ---
fill(circle(beamEnd, dotR), red);

// --- Curved arrows showing 360-degree sweep ---
// Two arcs with arrowheads, both indicating counterclockwise motion
draw(arc(center, arrowArcR, arc1Start + arcPad, arc1End - arcPad),
     arrowPen, Arrow(size=aSize));
draw(arc(center, arrowArcR, arc2Start + arcPad, arc2End - arcPad),
     arrowPen, Arrow(size=aSize));

// --- Laser device (small box at center) ---
if (showDevice) {
    // Rotate the laser box so it points along the beam direction
    transform T = rotate(beamAngle) * shift(-laserW/2, -laserH/2);
    path laserBox = T * box((0, 0), (laserW, laserH));
    fill(laserBox, gray(0.85));
    draw(laserBox, devicePen);
    // Aperture dot at the beam-exit end
    pair aperture = (laserW/2) * dir(beamAngle);
    fill(circle(aperture, 0.06), red);
}

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    // --- Radius label "r = 35 m" along the beam ---
    pair midBeam = 0.55 * beamEnd;
    pair perpDir = dir(beamAngle + 90);   // perpendicular to beam
    label("$r = 35\;\mathrm{m}$", midBeam + rLabelOffset * perpDir, perpDir, rLabelPen);

    // --- Circumference label "C = 2*pi*r" near bottom of circle ---
    pair cPos = (circleR + cLabelOffset) * dir(270);
    label("$C = 2\pi r$", cPos, S, cLabelPen);

    // --- "Laser" label ---
    label("Laser", (0, -0.65), S, labelPen);
}