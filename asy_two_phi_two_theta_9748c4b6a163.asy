// two_phi_two_theta.asy
// Solution diagram for laser microphone: tilted window case.
// Shows the blue window segment tilted by theta from horizontal,
// with incident and reflected beams. Both angles of incidence/reflection
// are phi + theta, so the total deflection is 2phi + 2theta.
//
// Follows "two_phi" (untilted case). Here the window has been rotated.
//
// Origin (0,0) at the point where the beam hits the tilted window.
// Scale: beam lengths ~6 units, segment half-length ~2.5 units.

import graph;

size(250, 0);

// ============================================================
// CONFIGURATION
// ============================================================

// --- Angles (degrees) ---
// Exaggerated for visual clarity. In the actual problem phi is very small,
// but we make it bigger so the arcs and labels are legible.
real phi   = 7;      // original angle of incidence
real theta = -10;      // tilt angle of window (visually noticeable)

// --- Geometry ---
real halfSeg   = 2.5;     // half-length of blue window segment
real beamLen   = 6.0;     // length of incident / reflected beams
real normalLen = 2.5;     // half-length of dashed normal line
real ghostExtra = 0.5;    // ghost segment extends a bit beyond blue segment

// --- Arc radii ---
real arcR_inc   = 2.0;    // radius for incidence angle arc (phi+theta)
real arcR_ref   = 2.0;    // radius for reflection angle arc (phi+theta)
real arcR_total = 3.4;    // radius for total angle arc (2phi+2theta)
real arcR_theta = 1.2;    // radius for the small theta tilt arc

// --- Pens ---
pen segPen       = blue + linewidth(4);
pen ghostPen     = mediumblue + linewidth(3) + opacity(0.3);
pen beamPen      = red + linewidth(1.2);
pen normalPen    = gray(0.5) + linewidth(0.8) + linetype("6 4");    // dashed normal
pen ghostNormPen = gray(0.6) + linewidth(0.6) + linetype("4 3") + opacity(0.3);
pen arcPen       = gray(0.2) + linewidth(0.8);
pen totalArcPen  = gray(0.3) + linewidth(0.7) + linetype("3 3");
pen thetaArcPen  = gray(0.3) + linewidth(0.7);
pen labelPen     = fontsize(11);
pen smallPen     = fontsize(9);

// --- Toggles ---
bool showGhost      = true;   // faint ghost of original horizontal position
bool showThetaArc   = true;   // arc showing the tilt angle theta
bool showTotalLabel = true;   // label showing 2phi + 2theta

// ============================================================
// DEFINE OBJECTS
// ============================================================

pair O = (0, 0);   // hit point (origin)

// --- Tilted blue segment ---
// Window tilted theta degrees counterclockwise from horizontal.
pair tiltDir = dir(theta);
pair seg1 = O - halfSeg * tiltDir;
pair seg2 = O + halfSeg * tiltDir;

// --- Ghost (original horizontal position) ---
pair gSeg1 = O + (-(halfSeg + ghostExtra), 0);
pair gSeg2 = O + ( (halfSeg + ghostExtra), 0);

// --- Normals ---
// Normal to tilted surface: perpendicular to segment, pointing downward
// (toward the laser, which is below).
// Tilted segment direction = theta deg from +x.
// Upward normal = theta + 90 deg from +x; downward = theta - 90.
pair nUp   = dir(theta + 90);    // upward normal (away from laser)
pair nDown = -nUp;               // downward normal (toward laser)

// --- Ghost normal (vertical, for untilted reference) ---
pair gNormTop = O + (0,  normalLen * 0.55);
pair gNormBot = O + (0, -normalLen * 0.55);

// --- Incident beam ---
// Beam direction is FIXED (laser doesn't move when window tilts).
// With the untilted window, the normal was vertical, and the angle of
// incidence was phi. So the beam travels at angle (90 + phi) from +x
// (nearly vertical, leaning slightly to the left).
real beamAngle = 90 + phi;
pair incDir = dir(beamAngle);                     // unit direction toward O
pair incSource = O - beamLen * incDir;             // laser source position

// --- Reflected beam ---
// Reflect incDir about the tilted-surface normal (using nDown toward laser).
// Law of reflection: r = d - 2(d . n) n
real dp = dot(incDir, nDown);
pair refDir = incDir - 2 * dp * nDown;
pair refEnd = O + beamLen * refDir;

// ============================================================
// ANGLE CALCULATIONS FOR ARCS
// ============================================================

// Direction angles (in degrees) for arc endpoints.
real nDownDeg   = degrees(nDown);     // ~(270 - theta) = ~250
real incAwayDeg = degrees(-incDir);   // back toward laser ~(270 - phi) = ~260
real refAwayDeg = degrees(refDir);    // toward detector ~(270 + phi + 2*theta - 360?)

// Helper: ensure a2 > a1 and the arc is the short way around.
real[] shortArc(real a1, real a2) {
    while (a2 < a1)       a2 += 360;
    while (a2 - a1 > 180) { a1 += 360; real tmp = a1; a1 = a2; a2 = tmp; }
    return new real[] {a1, a2};
}

// ============================================================
// DRAW
// ============================================================

// --- Ghost horizontal segment (underneath everything) ---
if (showGhost) {
    draw(gSeg1 -- gSeg2, ghostPen);
    draw(gNormTop -- gNormBot, ghostNormPen);
}

// --- Tilted blue segment ---
draw(seg1 -- seg2, segPen);

// --- Tilted normal (dashed line through O) ---
draw(O + normalLen * nUp -- O + normalLen * nDown, normalPen);

// --- Incident beam (laser -> O) ---
draw(incSource -- O, beamPen, Arrow(size=5));

// --- Reflected beam (O -> detector) ---
draw(O -- refEnd, beamPen, Arrow(size=5));

// ============================================================
// ANGLE ARCS AND LABELS
// ============================================================

// --- Incidence angle arc (phi + theta) ---
// Between the downward normal and the incident-away direction.
// The incident beam is to the LEFT of the normal.
{
    real[] ab = shortArc(nDownDeg, incAwayDeg);
    draw(arc(O, arcR_inc, ab[0], ab[1]), arcPen);

    real mid = (ab[0] + ab[1]) / 2;
    label("$\varphi\!+\!\theta$",
          O + (arcR_inc + 0.5) * dir(mid), labelPen);
}

// --- Reflection angle arc (phi + theta) ---
// Between the downward normal and the reflected-away direction.
// The reflected beam is to the RIGHT of the normal.
{
    real[] ab = shortArc(refAwayDeg, nDownDeg);
    draw(arc(O, arcR_ref, ab[0], ab[1]), arcPen);

    real mid = (ab[0] + ab[1]) / 2;
    label("$\varphi\!+\!\theta$",
          O + (arcR_ref + 0.5) * dir(mid), labelPen);
}

// --- Theta arc (tilt angle between ghost horizontal and tilted segment) ---
if (showThetaArc) {
    draw(arc(O, arcR_theta, 0, theta), thetaArcPen, ArcArrow(size=4));
    label("$\theta$",
          O + (arcR_theta + 0.3) * dir(theta / 2), NE, smallPen);
}

// --- Total angle arc (2phi + 2theta between the two beams) ---
if (showTotalLabel) {
    real[] ab = shortArc(incAwayDeg, refAwayDeg);
    // Both directions point roughly downward; the arc should go
    // from the incident-away (lower left) to reflected-away (lower right).
    // Make sure we sweep through "straight down" (the short way).

    // If the sweep goes upward through 90 deg, flip it.
    real sweep = ab[1] - ab[0];
    if (sweep > 180) {
        ab[0] = ab[0] + sweep;
        ab[1] = ab[1] - sweep;
        // Recalculate
        ab = shortArc(refAwayDeg, incAwayDeg);
    }

    draw(arc(O, arcR_total, ab[0], ab[1]), totalArcPen);

    real mid = (ab[0] + ab[1]) / 2;
    label("$2\varphi + 2\theta$",
          O + (arcR_total + 0.35) * dir(mid), S, labelPen);
}