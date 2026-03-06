// back_and_forth_laser.asy
// Laser bouncing off a mirror undergoing forward-backward motion.
// Two beam paths shown (mirror forward vs backward) so students can compare.
// Vertical layout: laser at bottom, mirror at top.
// Origin (0,0) at ground-level center of laser. Y-axis up toward mirror.
// Distance = 10x segment width, so the blue segment appears small at the top.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

size(200, 0);

// -- Mirror segment --
real halfSeg = 1.0;                 // half-width of blue mirror segment
real segWidth = 2 * halfSeg;        // full segment width = 2.0
real mirrorY = 10 * segWidth;       // laser-to-mirror distance = 20.0
real ghostShift = 0;             // forward/backward displacement

// -- Beam --
real incAngle = 0.5;                  // angle of incidence (degrees from normal)

// -- Devices --
real laserW = 0.3;
real laserH = 0.45;
real detW = 0.35;
real detH = 0.4;

// -- Pens --
pen segPen     = blue + linewidth(4);
pen ghostPen   = mediumblue + linewidth(3) + opacity(0.3);
pen arrPen     = gray(0.2) + linewidth(1.0);
pen beamPenFwd = red + linewidth(1.2);                       // forward position beam
pen beamPenBwd = red + linewidth(1.2) + linetype("6 4");     // backward position beam
pen devicePen  = gray(0.2) + linewidth(0.8);
pen labelPen   = fontsize(25);
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

// Beam direction: from laser to mirror center (0, mirrorY)
pair beamDir = unit((0, mirrorY) - beamOrigin);

// Hit point for a mirror at height y (beam has fixed direction)
pair hitAt(real y) {
    real t = (y - beamOrigin.y) / beamDir.y;
    return beamOrigin + t * beamDir;
}

// Reflected direction for horizontal mirror: flip y-component
pair reflDir = (beamDir.x, -beamDir.y);

// Landing point of reflected beam at y = detH (top of detector)
pair landFrom(pair hit) {
    real t = (detH - hit.y) / reflDir.y;
    return hit + t * reflDir;
}

// Forward mirror position (closer to laser)
real yFwd = mirrorY - ghostShift;
pair hitFwd  = hitAt(yFwd);
pair landFwd = landFrom(hitFwd);

// Backward mirror position (farther from laser)
real yBwd = mirrorY + ghostShift;
pair hitBwd  = hitAt(yBwd);
pair landBwd = landFrom(hitBwd);

// Detector position: centered between the two landing points
real detCenterX = (landFwd.x + landBwd.x) / 2;

// ============================================================
// DRAW
// ============================================================

// --- Beam paths ---
// Forward position (solid red)
draw(beamOrigin -- hitFwd, beamPenFwd);
draw(hitFwd -- landFwd, beamPenFwd);

// Backward position (dashed red)
draw(beamOrigin -- hitBwd, beamPenBwd);
draw(hitBwd -- landBwd, beamPenBwd);

// --- Mirror segment + ghosts ---
if (showGhosts) {
    draw((-halfSeg, yFwd) -- (halfSeg, yFwd), ghostPen);
    draw((-halfSeg, yBwd) -- (halfSeg, yBwd), ghostPen);
}
// Main segment at neutral position
draw((-halfSeg, mirrorY) -- (halfSeg, mirrorY), segPen);

// --- Motion arrows ---
if (showArrows) {
    real arrowGap = 0.15;
    real arrowLen = 0.5;
    real ax = halfSeg + 0.35;  // x-position of arrows (beside the segment)

    // Upward arrow (beyond backward ghost)
    draw((ax, yBwd + arrowGap) -- (ax, yBwd + arrowGap + arrowLen),
         arrPen, Arrow(size=aSize));

    // Downward arrow (beyond forward ghost)
    draw((ax, yFwd - arrowGap) -- (ax, yFwd - arrowGap - arrowLen),
         arrPen, Arrow(size=aSize));
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
// DISTANCE INDICATOR (laser to window)
// ============================================================

real dimX = laserX - 2.5;   // x-position of dimension line, left of laser
pen dimPen = gray(0.2) + linewidth(0.6) + linetype("2 3");
draw((dimX, laserH) -- (dimX, mirrorY), dimPen, Arrows(size=aSize));
label(rotate(90)*"$35 \;\mathrm{m}$", (dimX, (laserH + mirrorY) / 2), W, labelPen);

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    label("Laser", (laserX, -0.15), S, labelPen);
    label("Detector", (detCenterX, -0.15), S, labelPen);
}