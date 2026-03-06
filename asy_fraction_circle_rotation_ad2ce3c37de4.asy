// fraction_circle_rotation.asy
// A laser at the center of a circle, showing a small angular rotation.
// The beam starts vertical and rotates a small angle counterclockwise.
// The arc swept on the circle is labeled to show it's a fraction of the circle.
// The visual angle is exaggerated (drawn ~18°) but labeled "3°".

import graph;

// ============================================================
// CONFIGURATION — all tweakable parameters
// ============================================================

size(250);

// --- Circle ---
real R = 4.0;                   // circle radius
pen circlePen = gray(0.65) + linewidth(0.8) + linetype("4 4");  // dashed light circle

// --- Laser / center ---
real laserDotR = 0.12;          // radius of laser dot at center
pen laserDotPen = red;

// --- Beams ---
real visualAngle = 18;          // exaggerated visual angle (degrees)
                                // actual label will say 3°
pen beamPen = red + linewidth(1.4);
real beamArrowSize = 6;

// --- Arc on circle (between the two hit points) ---
pen arcHighlightPen = heavygreen + linewidth(2.5);
real arcDotR = 0.10;            // dots at the two hit points on circle

// --- Angle arc at center ---
real angleArcR = 1.4;           // radius of the angle indicator arc
pen angleArcPen = gray(0.25) + linewidth(0.8);
real angleArcArrowSize = 4;

// --- Radius label ---
pen labelPen = fontsize(11);
pen smallLabelPen = fontsize(9);

// --- Toggles ---
bool showRadiusLabel = true;
bool showArcLabel = true;
bool showAngleLabel = true;

// ============================================================
// DEFINE OBJECTS
// ============================================================

pair center = (0, 0);

// Beam 1: straight up (vertical)
real angle1 = 90;                           // degrees from +x axis
pair hit1 = center + R * dir(angle1);       // top of circle

// Beam 2: rotated counterclockwise by visualAngle
real angle2 = 90 + visualAngle;             // e.g. 108°
pair hit2 = center + R * dir(angle2);

// Midpoint of the arc (for labeling)
real angleMid = (angle1 + angle2) / 2;      // midpoint angle
pair arcMidpoint = center + R * dir(angleMid);

// Radius label position: along beam 1, halfway
pair radiusLabelPos = center + 0.55 * R * dir(angle1);

// Angle label position: just outside the angle arc
pair angleLabelPos = center + (angleArcR + 0.5) * dir(angleMid);

// ============================================================
// DRAW
// ============================================================

// --- Full circle (light/dashed background) ---
draw(circle(center, R), circlePen);

// --- Highlighted arc between the two hit points ---
draw(arc(center, R, angle1, angle2), arcHighlightPen);

// --- Dots at hit points ---
fill(circle(hit1, arcDotR), heavygreen);
fill(circle(hit2, arcDotR), heavygreen);

// --- Laser beams ---
draw(center -- hit1, beamPen, Arrow(size=beamArrowSize));
draw(center -- hit2, beamPen, Arrow(size=beamArrowSize));

// --- Angle arc at center ---
draw(arc(center, angleArcR, angle1, angle2), angleArcPen, ArcArrow(size=angleArcArrowSize));

// --- Laser dot at center ---
fill(circle(center, laserDotR), laserDotPen);

// ============================================================
// LABELS
// ============================================================

// --- Angle label ---
if (showAngleLabel) {
    label("$3^\circ$", angleLabelPos, labelPen);
}

// --- Radius label ---
if (showRadiusLabel) {
    label("$r$", radiusLabelPos, E, labelPen);
}

// --- Arc length label ---
if (showArcLabel) {
    label("$d$", arcMidpoint, dir(angleMid) * 1.5, labelPen);
}

// --- Laser label ---
label("Laser", center, 2.0*S + 1.5*E, smallLabelPen);