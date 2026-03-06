// tilt_laser.asy
// Laser bouncing off a mirror in two positions: horizontal and tilted.
// Solid beam reflects off the horizontal mirror (blue segment).
// Dashed beam reflects off the tilted mirror (ghost segment).
// Same layout as back_and_forth_laser.asy but with rotation instead of translation.
// The mirror center stays fixed; only its angle changes.
// Origin (0,0) at ground level beneath laser. Y-axis up toward mirror.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

size(200, 0);

// -- Mirror segment --
real halfSeg = 1.0;                 // half-width of blue mirror segment
real segWidth = 2 * halfSeg;        // full segment width = 2.0
real mirrorY = 10 * segWidth;       // laser-to-mirror distance = 20.0
real tiltAngle = 15;                // tilt angle in degrees

// -- Beam --
real incAngle = 3;                  // angle of incidence at neutral (degrees)

// -- Devices --
real laserW = 0.7;
real laserH = 0.45;
real detW = 0.55;
real detH = 0.4;

// -- Pens --
pen segPen     = blue + linewidth(4);
pen ghostPen   = mediumblue + linewidth(3) + opacity(0.45);
pen arrPen     = gray(0.2) + linewidth(1.0);
pen beamPenNeutral = red + linewidth(1.2);                       // neutral beam (solid)
pen beamPenTilted  = red + linewidth(1.2) + linetype("6 4");    // tilted beam (dashed)
pen devicePen  = gray(0.2) + linewidth(0.8);
pen labelPen   = fontsize(9);
real aSize     = 5;

// -- Toggles --
bool showLabels = true;
bool showGhosts = true;
bool showArrows = true;

// ============================================================
// BEAM GEOMETRY
// ============================================================

real theta = radians(incAngle);

// Laser positioned so beam hits mirror center at neutral position
real laserX = -mirrorY * tan(theta);   // ≈ -1.05
pair beamOrigin = (laserX, laserH);    // beam exits top of laser box

// Fixed beam direction: laser → mirror center (0, mirrorY)
pair beamDir = unit((0, mirrorY) - beamOrigin);

// Mirror center (fixed during tilting)
pair mirrorCenter = (0, mirrorY);

// --- Reflection helpers ---

// Hit point where beam intersects tilted mirror line
// Mirror line: mirrorCenter + s*(cos(alpha), sin(alpha))
pair computeHit(real alphaDeg) {
    real a = radians(alphaDeg);
    real ca = cos(a), sa = sin(a);
    pair diff = mirrorCenter - beamOrigin;
    // 2D: solve beam × mirrorDir = diff × mirrorDir
    real denom = beamDir.x * sa - beamDir.y * ca;
    real t = (diff.x * sa - diff.y * ca) / denom;
    return beamOrigin + t * beamDir;
}

// Reflected direction via law of reflection for tilted surface
// Normal pointing toward laser: n = (sin(alpha), -cos(alpha))
pair computeRefl(real alphaDeg) {
    real a = radians(alphaDeg);
    pair n = (sin(a), -cos(a));
    return beamDir - 2 * dot(beamDir, n) * n;
}

// Landing point at y = detH
pair computeLand(pair hit, pair rDir) {
    real t = (detH - hit.y) / rDir.y;
    return hit + t * rDir;
}

// --- Compute paths for neutral and tilted positions ---

// Neutral (horizontal mirror): solid beam
pair hitN   = computeHit(0);
pair reflN  = computeRefl(0);
pair landN  = computeLand(hitN, reflN);

// Tilted mirror: dashed beam
pair hitT   = computeHit(tiltAngle);
pair reflT  = computeRefl(tiltAngle);
pair landT  = computeLand(hitT, reflT);

// Detector placed at neutral landing position
real detCenterX = landN.x;

// ============================================================
// DRAW
// ============================================================

// --- Beam paths ---
// Neutral / horizontal mirror (solid)
draw(beamOrigin -- hitN, beamPenNeutral);
draw(hitN -- landN, beamPenNeutral);

// Tilted mirror (dashed)
draw(beamOrigin -- hitT, beamPenTilted);
draw(hitT -- landT, beamPenTilted);

// --- Mirror positions ---
// Tilted ghost (drawn first so neutral draws on top)
draw(mirrorCenter + halfSeg * dir(180 + tiltAngle)
  -- mirrorCenter + halfSeg * dir(tiltAngle), ghostPen);
// Main segment at neutral (horizontal)
draw(mirrorCenter + (-halfSeg, 0) -- mirrorCenter + (halfSeg, 0), segPen);

// --- Curved motion arrow (rotation indicator, matching window_motions) ---
if (showArrows) {
    real curveR = 0.6;   // arc radius for rotation indicator
    draw(arc(mirrorCenter, curveR, 15, 165), arrPen, Arrows(size=aSize));
}

// --- Laser device ---
path laserBox = shift(laserX, 0) * box((-laserW/2, 0), (laserW/2, laserH));
fill(laserBox, gray(0.85));
draw(laserBox, devicePen);
fill(circle((laserX, laserH), 0.06), red);  // aperture dot

// --- Detector device ---
path detBox = shift(detCenterX, 0) * box((-detW/2, 0), (detW/2, detH));
fill(detBox, gray(0.85));
draw(detBox, devicePen);
fill(circle((detCenterX, detH), 0.06), gray(0.2));  // sensor dot

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    label("Laser", (laserX, -0.15), SW, labelPen);
    label("Detector", (detCenterX, -0.15), SE, labelPen);
}