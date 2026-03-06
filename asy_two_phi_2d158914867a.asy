// two_phi.asy
// Solution diagram: laser beam reflecting off an untilted window (tilt = 0).
// Shows the angle of incidence phi and angle of reflection phi,
// making it clear the total angle between incident and reflected rays is 2*phi.
// Origin (0,0) at the center of the blue window segment.
// Y-axis points up (along the normal); X-axis along the mirror surface.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

size(250, 0);

// -- Window segment (blue mirror) --
real halfSeg = 2.5;            // half-length of the blue segment

// -- Beam geometry --
real phi = 20;                 // angle of incidence (degrees from normal)
real beamLen = 5.5;            // length of each beam ray

// -- Normal line --
real normalLen = 4.5;          // total length of dashed normal (extends above and below)

// -- Angle arcs --
real arcR_phi = 1.8;           // radius for individual phi arcs
real arcR_2phi = 2.8;          // radius for the combined 2*phi arc
real labelScale = 1.35;        // multiplier to push labels outward from arc
real twoPhiLabelScale = 1.45;  // extra push for the 2*phi label to avoid overlap

// -- Pens --
pen segPen    = blue + linewidth(4);
pen beamPen   = red + linewidth(1.4);
pen normalPen = gray(0.4) + linewidth(0.8) + linetype("6 4");   // dashed
pen arcPen    = gray(0.2) + linewidth(0.8);
pen labelPen  = fontsize(14);

// -- Arrow --
real aSize = 6;                // arrowhead size

// -- Toggles --
bool showTwoPhiArc = true;     // show the outer 2*phi arc and label
bool showNormal    = true;     // show dashed normal line

// ============================================================
// DEFINE OBJECTS
// ============================================================

pair mc = (0, 0);              // mirror center = hit point

// Normal direction (perpendicular to horizontal mirror, pointing down toward laser)
// Convention: normal points toward the incoming beam (below the mirror).
pair normalDir = (0, -1);

// Incident beam: arrives from below-left at angle phi from the normal.
// Normal points down, so the beam comes from direction rotated +phi from normalDir.
// The beam source is at (mc + beamLen * dir(270 - phi)) -- no, let's think carefully:
//   Normal is straight down (270 deg).
//   Incident ray comes FROM a direction phi to the left of the normal.
//   So the source is at angle (270 + phi) from mc (measuring from +x axis).
pair incSource = mc + beamLen * dir(270 + phi);

// Reflected beam: leaves toward below-right at angle phi on the other side of normal.
// The endpoint is at angle (270 - phi) from mc.
pair refEnd = mc + beamLen * dir(270 - phi);

// ============================================================
// DRAW
// ============================================================

// --- Blue window segment (horizontal) ---
draw(mc + (-halfSeg, 0) -- mc + (halfSeg, 0), segPen);

// --- Dashed normal line ---
if (showNormal) {
    draw(mc + (0, normalLen * 0.3) -- mc + (0, -normalLen * 0.7), normalPen);
    label("normal", mc + (0, normalLen * 0.3), N, fontsize(9) + gray(0.35));
}

// --- Incident beam (arrow pointing toward mirror) ---
draw(incSource -- mc, beamPen, Arrow(size=aSize));

// --- Reflected beam (arrow pointing away from mirror) ---
draw(mc -- refEnd, beamPen, Arrow(size=aSize));

// ============================================================
// ANGLE ARCS AND LABELS
// ============================================================

// Angles measured from the +x axis (Asymptote convention).
// The downward normal is at 270 deg.
// Incident ray direction (from source toward mc) points at angle (90 - phi) from +x,
//   but we want the direction FROM mc toward the source: 270 + phi.
// Reflected ray direction FROM mc toward refEnd: 270 - phi.

// Phi arc on the incident side: from normal (270) to incident ray direction (270 + phi)
draw(arc(mc, arcR_phi, 270, 270 + phi), arcPen);
// Label at midpoint of this arc
label("$\phi$", mc + arcR_phi * labelScale * dir(270 + phi / 2), labelPen);

// Phi arc on the reflected side: from reflected ray direction (270 - phi) to normal (270)
draw(arc(mc, arcR_phi, 270 - phi, 270), arcPen);
// Label at midpoint of this arc
label("$\phi$", mc + arcR_phi * labelScale * dir(270 - phi / 2), labelPen);

// 2*phi arc: the full angle between incident and reflected rays
if (showTwoPhiArc) {
    draw(arc(mc, arcR_2phi, 270 - phi, 270 + phi), arcPen);
    label("$2\phi$", mc + arcR_2phi * twoPhiLabelScale * dir(270), labelPen);
}