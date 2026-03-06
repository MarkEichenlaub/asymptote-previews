// tilt_laser.asy
// A tilting mirror (from window_motions panel c, enlarged) with an incident
// laser beam at 3° angle of incidence hitting the mirror center.
// The tilt angle θ is indicated with an arc and label.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

size(250, 0);

// -- Mirror geometry --
real halfSeg   = 2.0;          // half-length of blue segment (bigger than window_motions)
real tiltAngle = 25;           // tilt angle in degrees for ghost copies

// -- Pens --
pen segPen   = blue + linewidth(4);
pen ghostPen = mediumblue + linewidth(3) + opacity(0.3);
pen arcPen   = gray(0.2) + linewidth(0.8);
pen beamPen  = red + linewidth(1.4);

// -- Sizes --
real arcR    = 1.4;            // radius of the θ arc
real beamLen = 4.5;            // length of incoming beam
real aSize   = 6;              // arrowhead size

// -- Beam --
real incAngle = 3;             // angle of incidence (degrees from normal)

// ============================================================
// MIRROR CENTER
// ============================================================

pair mc = (0, 0);

// ============================================================
// HELPER
// ============================================================

void drawSeg(pair c, real angle, pen p) {
    draw(c + halfSeg*dir(angle + 180) -- c + halfSeg*dir(angle), p);
}

// ============================================================
// DRAW MIRROR AND GHOSTS
// ============================================================

// Ghost copies at ± tiltAngle
drawSeg(mc,  tiltAngle, ghostPen);
drawSeg(mc, -tiltAngle, ghostPen);

// Main (neutral) horizontal segment
draw(mc + (-halfSeg, 0) -- mc + (halfSeg, 0), segPen);

// ============================================================
// TILT-ANGLE ARC AND LABEL
// ============================================================

// Arc from the neutral position (0°) to one ghost (+tiltAngle)
draw(arc(mc, arcR, 0, tiltAngle), arcPen, ArcArrow(size=4));

// Label θ at the midpoint of the arc
label("$\theta$", mc + arcR * 1.2 * dir(tiltAngle / 2), fontsize(20));

// ============================================================
// INCIDENT LASER BEAM
// ============================================================

// The beam arrives and hits mc.
// Mirror is horizontal ⇒ normal points up (90°).
// Angle of incidence = 3° from normal, so beam travels at
// 90° − 3° = 87° from the +x axis.  Source is below/left of mc.

real beamAngle = 90 - incAngle;   // 87° from +x axis
pair beamStart = mc - beamLen * dir(beamAngle);

draw(beamStart -- mc, beamPen, Arrow(size=aSize));