import markers;
unitsize(0.65 cm);

// =============================================================
// CONFIGURATION — all "magic numbers" and toggleable options
// =============================================================

// Origin (0,0) is the center of the mirror line.
// +y is upward (above mirror = real space), -y is below (virtual).
// Scale: 1 unit ~ 0.45 cm; diagram spans roughly 20 x 22 units.

// --- Geometry parameters ---
real mirrorHalf   = 10;   // half-width of mirror line
real coinRadius   = 0.7;  // radius of the coin circle
real coinHeight   = 5;    // coin center height above mirror
real coinX         = 1.2;  // coin horizontal offset (0 = centered between eyes)
real eyeHeight    = 10;   // eye center height above mirror
real eyeSpread    = 4.5;  // half-distance between eyes (50% wider than ref image)
real eyeRx        = 0.9;  // eye ellipse semi-axis (horizontal)
real eyeRy        = 1.2;  // eye ellipse semi-axis (vertical)
real irisR        = 0.45; // iris radius
real pupilR       = 0.22; // pupil radius
real normalLen    = 4.0;  // half-length of vertical normals above/below mirror
real angleMarkR   = 1.5;  // arc radius for angle markers
real angleLabelR  = 2.3;  // placement radius for angle labels

// --- Pen styles ---
pen mirrorPen     = gray(0.3) + linewidth(1.8);
pen rayPen        = orange + linewidth(1.0);
pen dashRayPen    = orange + linewidth(1.0) + linetype("6 6");
pen normalPen     = gray(0.5) + linewidth(0.7) + linetype("3 3");
pen coinPen       = gray(0.45) + linewidth(1.0);
pen coinFill      = gray(0.75);
pen eyeWhite      = white;
pen irisPen       = heavygreen;
pen pupilPen      = black;
pen anglePenI     = blue + linewidth(0.9);   // incidence angle arc
pen anglePenR     = red  + linewidth(0.9);   // reflection angle arc

// --- Toggle switches ---
bool showLabels       = true;
bool showNormals      = true;
bool showAngleMarks   = true;

// =============================================================
// DEFINE OBJECTS — key points
// =============================================================

pair leftEye  = (-eyeSpread, eyeHeight);
pair rightEye = ( eyeSpread, eyeHeight);

pair coinReal    = (coinX, coinHeight);
pair coinVirtual = (coinX, -coinHeight);

pair mirrorL = (-mirrorHalf, 0);
pair mirrorR = ( mirrorHalf, 0);

// =============================================================
// ASSIGN VALUES — reflection points on the mirror
// =============================================================
// Flat-mirror law: the reflection point for each eye is where
// the line from the virtual image to that eye crosses y = 0.

real tL = -coinVirtual.y / (leftEye.y - coinVirtual.y);
pair reflL = coinVirtual + tL * (leftEye - coinVirtual);

real tR = -coinVirtual.y / (rightEye.y - coinVirtual.y);
pair reflR = coinVirtual + tR * (rightEye - coinVirtual);

// =============================================================
// HELPER — draw a stylised eye
// =============================================================
void drawEye(pair center) {
pair pL = center + (-eyeRx, 0);
pair pR = center + ( eyeRx, 0);
pair pT = center + (0,  eyeRy * 0.65);
pair pB = center + (0, -eyeRy * 0.55);
path almondTop = pL{up}..pT..{down}pR;
path almondBot = pR{down}..pB..{up}pL;
filldraw(almondTop & almondBot & cycle, eyeWhite, black + linewidth(0.8));
filldraw(circle(center, irisR), irisPen, irisPen);
fill(circle(center, pupilR), pupilPen);
}

// =============================================================
// HELPER — draw incidence/reflection angle arcs at one
//          reflection point, with labels on opposite sides
// =============================================================
// refl : point on mirror (y=0)
// coin : real coin position (source of incoming ray)
// eye  : eye that receives the reflected ray
// side : +1 if eye is to the RIGHT of normal, -1 if to the LEFT
void drawAngleMarksAtRefl(pair refl, pair coin, pair eye, int side, string angleLabel) {
// Normal direction is straight up: 90 degrees
real angNorm = 90;

// Incoming ray travels from coin to refl; the reversed direction
// (pointing away from mirror back toward coin) is what we measure from
pair dInRev = unit(coin - refl);
real angIn  = degrees(dInRev);

// Reflected ray goes from refl toward eye
pair dRef   = unit(eye - refl);
real angRef = degrees(dRef);

// Draw incidence arc (blue): between normal and incoming-ray direction
real a1 = min(angNorm, angIn);
real a2 = max(angNorm, angIn);
draw(arc(refl, angleMarkR, a1, a2), anglePenI);

// Draw reflection arc (red): between normal and reflected-ray direction
real b1 = min(angNorm, angRef);
real b2 = max(angNorm, angRef);
draw(arc(refl, angleMarkR, b1, b2), anglePenR);

// Labels — place incidence label on the coin side, reflection on the eye side
if (showLabels) {
// Incidence label: midpoint of incidence arc, offset toward coin side
pair posI = refl + angleLabelR * dir((a1 + a2) / 2);
// Reflection label: midpoint of reflection arc, offset toward eye side
pair posR = refl + angleLabelR * dir((b1 + b2) / 2);

// Nudge labels apart horizontally to avoid overlap
pair nudge = (side * 0.1, 0);
label("$" + angleLabel + "$", posI - nudge, fontsize(10));
label("$" + angleLabel + "$", posR + nudge, fontsize(10));
}
}

// =============================================================
// DRAW — mirror line with hatching
// =============================================================
draw(mirrorL -- mirrorR, mirrorPen);
int nHatch = 35;
for (int i = 0; i < nHatch; ++i) {
real x = mirrorL.x + (mirrorR.x - mirrorL.x) * (i + 0.5) / nHatch;
draw((x, 0) -- (x - 0.45, -0.7), gray(0.5) + linewidth(0.4));
}

// =============================================================
// DRAW — solid light rays (above mirror, real paths)
// =============================================================
// Coin to mirror (incoming rays)
draw(coinReal -- reflL, rayPen, EndArrow(size=5));
draw(coinReal -- reflR, rayPen, EndArrow(size=5));
// Mirror to eyes (reflected rays)
draw(reflL -- leftEye,  rayPen, EndArrow(size=5));
draw(reflR -- rightEye, rayPen, EndArrow(size=5));

// =============================================================
// DRAW — dashed virtual rays (below mirror)
// =============================================================
draw(reflL -- coinVirtual, dashRayPen);
draw(reflR -- coinVirtual, dashRayPen);

// =============================================================
// DRAW — vertical dotted normals at reflection points
// =============================================================
if (showNormals) {
draw((reflL.x, -normalLen) -- (reflL.x, normalLen), normalPen);
draw((reflR.x, -normalLen) -- (reflR.x, normalLen), normalPen);
}

// =============================================================
// DRAW — angle markers at each reflection point
// =============================================================
if (showAngleMarks) {
// Left reflection: eye is to the LEFT of normal => side = -1
drawAngleMarksAtRefl(reflL, coinReal, leftEye,  -1, "a");
// Right reflection: eye is to the RIGHT of normal => side = +1
drawAngleMarksAtRefl(reflR, coinReal, rightEye,  1, "b");

// Green arc: angle between left normal and left dashed ray (below mirror)
// This is the angle on the LEFT side, between the downward normal and the
// dashed line from reflL to coinVirtual, measured inside the mirror region.
real angDown = 270;  // downward normal direction
pair dVirt = unit(coinVirtual - reflL);  // direction toward virtual image
real angVirt = degrees(dVirt);
// angVirt will be somewhere between 180 and 270 (pointing down-right into mirror)
// We want the arc on the LEFT side of the normal, sweeping from angVirt to angDown
draw(arc(reflL, angleMarkR, angDown, angVirt), red + linewidth(0.9));
// Label
pair posC = reflL + angleLabelR * dir((angVirt + angDown) / 2);
label("$a$", posC, fontsize(10));

// Red arc on the RIGHT: angle between right normal (below mirror) and right dashed ray
pair dVirtR = unit(coinVirtual - reflR);
real angVirtR = degrees(dVirtR);
// angVirtR points down-left from reflR (between 180 and 270)
// Normal below mirror is 270. Arc from angVirtR to 270.
draw(arc(reflR, angleMarkR, angVirtR, 270), red + linewidth(0.9));
pair posBvirt = reflR + angleLabelR * dir((angVirtR + 270) / 2);
label("$b$", posBvirt, fontsize(10));

// Green arc d: angle between mirror surface and incoming solid ray at reflL
// Surface direction to the RIGHT at reflL is 0 degrees
// Direction from reflL toward coinReal is up-right
pair dCoinL = unit(coinReal - reflL);
real angCoinL = degrees(dCoinL);
// d sweeps from 0 to angCoinL (above the surface on the right side)
draw(arc(reflL, angleMarkR * 0.5, 0, angCoinL), heavygreen + linewidth(0.9));
pair posD = reflL + angleLabelR * 0.5 * dir(angCoinL / 2);
label("$d$", posD, fontsize(10));

// Green arc e: mirror image of d, between surface and dashed line below
// Direction from reflL toward coinVirtual is down-right
// angVirt was already computed above (pointing down-right, between 270 and 360)
// e sweeps from angVirt up to 360 (=0, the surface direction)
draw(arc(reflL, angleMarkR * 0.5, angVirt, 360), heavygreen + linewidth(0.9));
pair posE = reflL + angleLabelR * 0.5 * dir((angVirt + 360) / 2);
label("$e$", posE, fontsize(10));
}

// =============================================================
// DRAW — coins (real and virtual image)
// =============================================================
filldraw(circle(coinReal, coinRadius), coinFill, coinPen);
filldraw(circle(coinVirtual, coinRadius),
coinFill + opacity(0.5), coinPen + linetype("4 4"));

// =============================================================
// DRAW — eyes
// =============================================================
drawEye(leftEye);
drawEye(rightEye);

// =============================================================
// LABELS
// =============================================================
//if (showLabels) {
//label("Mirror", (mirrorR.x - 1.8, 0), 1.5*N, fontsize(9));
//label("Coin", coinReal, 3.2*E, fontsize(9));
//label("Virtual image", coinVirtual + (0, -coinRadius - 0.9), S,
//    fontsize(9));
//}