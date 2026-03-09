// laser_miss_wall.asy
// Laser microphone aimed directly at a wall, hitting 2.0 m to the right
// of the center of a 0.70 m wide window. Laser travels 35 m to wall.
// Vertical layout: laser at bottom, wall at top.
// Horizontal distances are to scale relative to each other.

import graph;

// ============================================================
// CONFIGURATION -- all tweakable parameters
// ============================================================

// Coordinate system: origin at laser hit point on wall.
// x-axis: horizontal along wall (positive = right, toward laser hit).
// y-axis: vertical, positive downward toward laser.
// This lets us use positive y downward so the wall is at top.
//
// Actually, let's keep standard orientation: y up, wall at top.
// Origin at laser base. Wall at y = wallY.

// --- Physical dimensions (meters) ---
real distToWall     = 35;       // laser-to-wall distance (vertical)
real hitFromCenter  = 2.0;      // laser hits this far right of window center
real windowWidth    = 0.70;     // window width

// --- Drawing scale ---
// Uniform scale: both axes use hScale cm per meter (true to scale).
real hScale = 3.0;              // cm per meter (both directions)
real wallY  = distToWall * hScale;  // vertical distance, true to scale

// --- Size control ---
// size() with both dimensions lets Asymptote fit while preserving aspect
real figW = (hitFromCenter + windowWidth/2 + 2.5) * hScale;  // ~13.5
real figH = wallY + 3.0;                                      // ~11

unitsize(1cm);

// --- Laser position ---
real laserX = 0;                // laser directly below hit point
real laserY = 0;                // laser at bottom

// --- Hit point ---
real hitX = 0;                  // hit point defines x = 0

// --- Wall geometry (in drawing coordinates) ---
real windowCenterX = -hitFromCenter * hScale;
real windowLeftX   = (windowCenterX - windowWidth / 2 * hScale);
real windowRightX  = (windowCenterX + windowWidth / 2 * hScale);
real wallLeftEnd   = windowLeftX - 2.0 * hScale;     // wall extends left
real wallRightEnd  = 0.8 * hScale;                     // wall extends right of hit

// --- Wall appearance ---
real wallThick = 0.20;          // visual thickness of wall band (cm)

// --- Laser device ---
real laserW = 0.6;
real laserH = 0.4;

// --- Break symbol (disabled: vertical is now true to scale) ---
bool showBreak   = false;
real breakY      = 1.8;         // y-position of break (unused)
real breakW      = 0.15;        // half-width of zigzag (unused)
real breakH      = 0.25;        // half-height of zigzag (unused)

// --- Dimension line offsets ---
real dimVx       = 1.0 * hScale;  // x-offset for vertical dimension line
real dimHy       = 1.0;           // y-offset above wall for 2.0 m line
real dimWy       = 0.8;           // y-offset below wall for 0.70 m line

// --- Pens ---
pen beamPen     = red + linewidth(1.8);
pen wallPen     = gray(0.25) + linewidth(3.5);
pen windowPen   = mediumblue + linewidth(2.0) + linetype("4 3");
pen dimPen      = gray(0.4) + linewidth(0.6) + linetype("3 3");
pen dimArrowPen = gray(0.4) + linewidth(0.8);
pen devicePen   = gray(0.2) + linewidth(0.8);
pen labelPen    = fontsize(11);
pen dimLabelPen = fontsize(10);

// --- Toggles ---
bool showLabels     = true;
bool showDimensions = true;
bool showWallFill   = true;
bool showRightAngle = true;

// ============================================================
// DEFINE OBJECTS
// ============================================================

pair hitPoint = (hitX, wallY);

// Wall segment 1: far left to left edge of window
pair wall1L = (wallLeftEnd, wallY);
pair wall1R = (windowLeftX, wallY);

// Wall segment 2: right edge of window to far right
pair wall2L = (windowRightX, wallY);
pair wall2R = (wallRightEnd, wallY);

// Window endpoints
pair winL = (windowLeftX, wallY);
pair winR = (windowRightX, wallY);

// Laser beam
pair beamBot = (laserX, laserY + laserH);
pair beamTop = hitPoint;

// ============================================================
// DRAW
// ============================================================

// --- Wall fill ---
if (showWallFill) {
    fill((wallLeftEnd, wallY - wallThick) -- (wallLeftEnd, wallY + wallThick)
      -- (windowLeftX, wallY + wallThick) -- (windowLeftX, wallY - wallThick) -- cycle,
      gray(0.82));
    fill((windowRightX, wallY - wallThick) -- (windowRightX, wallY + wallThick)
      -- (wallRightEnd, wallY + wallThick) -- (wallRightEnd, wallY - wallThick) -- cycle,
      gray(0.82));
}

// --- Wall lines ---
draw(wall1L -- wall1R, wallPen);
draw(wall2L -- wall2R, wallPen);

// --- Window (dashed blue to indicate glass opening) ---
draw(winL -- winR, windowPen);

// --- Laser beam (straight up to wall, with break) ---
if (showBreak) {
    // Lower segment
    draw(beamBot -- (laserX, breakY - breakH), beamPen);
    // Zigzag break symbol
    path zigzag = (laserX, breakY - breakH)
               -- (laserX - breakW, breakY - breakH * 0.33)
               -- (laserX + breakW, breakY + breakH * 0.33)
               -- (laserX, breakY + breakH);
    draw(zigzag, beamPen);
    // Upper segment
    draw((laserX, breakY + breakH) -- beamTop, beamPen);
} else {
    draw(beamBot -- beamTop, beamPen);
}

// --- Right angle mark at hit point ---
if (showRightAngle) {
    real sq = 0.30;
    draw((hitX - sq, wallY) -- (hitX - sq, wallY - sq) -- (hitX, wallY - sq),
         gray(0.3) + linewidth(0.8));
}

// --- Laser device ---
path laserBox = shift(laserX, laserY) * box((-laserW/2, 0), (laserW/2, laserH));
fill(laserBox, gray(0.85));
draw(laserBox, devicePen);
fill(circle((laserX, laserY + laserH), 0.07), red);  // aperture dot

// ============================================================
// DIMENSION LINES
// ============================================================

if (showDimensions) {
    real aSize = 4;

    // --- Vertical: 35 m (laser to wall) ---
    real vx = dimVx;
    // Extension lines
    draw((hitX + 0.3, laserY + laserH) -- (vx + 0.2, laserY + laserH), dimPen);
    draw((wallRightEnd - 0.2, wallY) -- (vx + 0.2, wallY), dimPen);
    // Arrow
    draw((vx, laserY + laserH) -- (vx, wallY), dimArrowPen, Arrows(size=aSize));
    label("$35\;\mathrm{m}$", (vx, (laserY + laserH + wallY) / 2), E, dimLabelPen);

    // --- Horizontal: 2.0 m (hit point to window center) ---
    real hy = wallY + dimHy;
    // Extension lines
    draw((hitX, wallY + wallThick) -- (hitX, hy + 0.15), dimPen);
    draw((windowCenterX, wallY + wallThick) -- (windowCenterX, hy + 0.15), dimPen);
    // Arrow
    draw((windowCenterX, hy) -- (hitX, hy), dimArrowPen, Arrows(size=aSize));
    label("$2.0\;\mathrm{m}$", ((windowCenterX + hitX) / 2, hy), N, dimLabelPen);

    // --- Horizontal: 0.70 m (window width) ---
    real wy = wallY - dimWy;
    // Extension lines
    draw((windowLeftX, wallY - wallThick) -- (windowLeftX, wy - 0.15), dimPen);
    draw((windowRightX, wallY - wallThick) -- (windowRightX, wy - 0.15), dimPen);
    // Arrow
    draw((windowLeftX, wy) -- (windowRightX, wy), dimArrowPen, Arrows(size=aSize));
    label("$0.70\;\mathrm{m}$", ((windowLeftX + windowRightX) / 2, wy), S, dimLabelPen);
}

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    label("Laser", (laserX, laserY), S, labelPen);
    label("Wall", (wallRightEnd, wallY), 2E, labelPen);
    label("Window", (windowCenterX, wallY), 2.5S + 2W, labelPen);
}