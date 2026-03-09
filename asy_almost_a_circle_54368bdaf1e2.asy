// almost_a_circle.asy
// Shows that a straight wall is nearly the same as a circular arc.
// The laser (center of the circle) is at the bottom, pointing straight
// up at the wall. An arc of a circle subtends 3 degrees starting from
// the laser direction. A straight horizontal wall is tangent at the
// point where the laser hits (top of the arc). A dimension line shows
// radius = 35 m (laser to wall). The arc and wall nearly overlap,
// demonstrating they are almost the same.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

unitsize(2cm);

// --- Drawing geometry ---
real R = 8;                      // drawing radius (laser to wall)
real visHalfAngle = 3;          // arc sweep angle (degrees), true 3°

// --- Dimension lines ---
real dimGap = 0.12;              // clearance between endpoints and arrows
real arrowSz = 4;                // arrowhead size

// --- Angle arc ---
real angleArcR = 2;            // radius of the angle marker near the laser

// --- Laser ---
real laserDotR = 0.12;           // laser indicator dot radius

// --- Pens ---
pen arcPen    = red + linewidth(1.0);
pen wallPen   = black + linewidth(1.8);
pen laserPen  = red + linewidth(0.8) + linetype("4 3");  // laser beam (dashed)
pen dimPen    = gray(0.4) + linewidth(0.8) + linetype("4 3");
pen labelPen  = fontsize(10);
pen laserFill = red;

// --- Toggles ---
bool showLabels = true;

// ============================================================
// COMPUTED GEOMETRY
// ============================================================

pair laser = (0, 0);
pair arcTop = (0, R);

// Arc endpoints: arc starts at 90° (laser direction) and sweeps 3° to the left
pair arcStart = laser + R * dir(90);               // top of arc, where laser hits wall
pair arcEnd   = laser + R * dir(90 + visHalfAngle); // far end of arc, 3° from laser

// Arc width (horizontal extent from center to far end)
real arcW = R * Sin(visHalfAngle);

// Wall sits at y = R, tangent to the arc at the point where the laser hits
real wallY = R;

// Wall extends a bit beyond the arc on both sides
real wallMargin = 0.5;
pair wallL = (-wallMargin, wallY);              // wall starts just left of laser line
pair wallR = (arcW + wallMargin, wallY);        // wall extends past arc end

// ============================================================
// DRAW
// ============================================================

// --- Laser beams (dashed red, one to wall, one to arc end) ---
draw(laser -- arcTop, laserPen);
draw(laser -- arcEnd, laserPen);

// --- Wall (black, tangent at top of arc) ---
draw(wallL -- wallR, wallPen);

// --- Arc (red, drawn on top of wall so it's visible) ---
draw(arc(laser, R, 90, 90 + visHalfAngle), arcPen);

// --- Laser dot ---
fill(circle(laser, laserDotR), laserFill);

// --- Dimension line: 35 m (laser beam to wall, straight up) ---
real dimLeftX = -wallMargin - 1.0;
draw((dimLeftX, dimGap) -- (dimLeftX, R - dimGap), dimPen, Arrows(size=arrowSz));

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    label("$35\;\mathrm{m}$",
          (dimLeftX, R / 2), W, labelPen);

    label("arc", arcEnd + (-0.2, 0.15), W, labelPen + red);
    label("wall", wallR + (0.2, 0), E, labelPen + black);

    label("Laser", laser, S, labelPen);

    // --- Angle label between the two laser beams ---
    // Small arc at the laser marking the 3° angle
    draw(arc(laser, angleArcR, 90, 90 + visHalfAngle), labelPen);
    // Place label just outside the angle arc, at the bisector
    pair angleLabelPos = laser + (angleArcR ) * dir(90 + visHalfAngle / 2);
    label("$3^\circ$", angleLabelPos, E, labelPen);
}