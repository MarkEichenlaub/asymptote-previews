// almost_a_circle.asy
// Shows that a straight wall is nearly the same as a circular arc.
// The laser (center of the circle) is at the bottom. An arc of a circle
// subtends ~3 degrees near the top. A straight horizontal wall is tangent
// to the top of the arc. Two dimension lines show radius = 35 m and
// distance to the wall = 35.06 m. The arc and wall nearly overlap,
// demonstrating they are almost the same.
//
// The arc's angular width is drawn larger than 3 real degrees so
// the curvature is visible. The vertical-to-horizontal aspect ratio
// is compressed so the diagram is not extremely tall and thin.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

size(220, 0);

// --- Drawing geometry ---
// We use a visual arc half-angle of ~20 degrees so curvature is obvious.
// The labels still say 35 m / 35.06 m (the real physics).
real R = 8;                      // drawing radius (laser to arc top)
real visHalfAngle = 20;          // visual half-angle of arc (degrees)

// --- Arc-to-wall gap ---
// Real gap is invisibly small. We make it visible but still small
// enough to convey "nearly the same."
real gapAtEdge = 0.35;           // visible gap between arc edge and wall

// --- Dimension lines ---
real dimGap = 0.12;              // clearance between endpoints and arrows
real arrowSz = 4;                // arrowhead size

// --- Laser ---
real laserDotR = 0.12;           // laser indicator dot radius

// --- Pens ---
pen arcPen   = blue + linewidth(1.8);
pen wallPen  = gray(0.2) + linewidth(1.8);
pen dimPen   = gray(0.4) + linewidth(0.8) + linetype("4 3");
pen labelPen = fontsize(10);
pen laserFill = red;

// --- Toggles ---
bool showLabels = true;

// ============================================================
// COMPUTED GEOMETRY
// ============================================================

pair laser = (0, 0);
pair arcTop = (0, R);

// Arc endpoints
pair arcLeft  = laser + R * dir(90 + visHalfAngle);
pair arcRight = laser + R * dir(90 - visHalfAngle);

// Arc half-width
real arcHalfW = R * Sin(visHalfAngle);

// Wall y-position: the wall is tangent at arcTop, but we place it
// slightly above to show the gap at the edges grows.
// At the arc edges, the arc y = R*cos(visHalfAngle).
// The wall is at y = R (tangent at top). So the gap at the edges is:
//   R - R*cos(visHalfAngle)
// This is the natural gap. We scale it if needed.
real naturalGap = R - R * Cos(visHalfAngle);
// The wall sits at y = R (tangent to top of arc). No exaggeration needed
// because 20 degrees gives a visible gap naturally.
real wallY = R;

// Wall extends a bit beyond the arc
real wallMargin = 0.5;
pair wallL = (-arcHalfW - wallMargin, wallY);
pair wallR = ( arcHalfW + wallMargin, wallY);

// Point where the 35.06 m line meets the wall (at the arc edge x)
pair wallEdgeR = (arcHalfW, wallY);

// ============================================================
// DRAW
// ============================================================

// --- Arc (blue) ---
draw(arc(laser, R, 90 - visHalfAngle, 90 + visHalfAngle), arcPen);

// --- Wall (gray, tangent at top of arc) ---
draw(wallL -- wallR, wallPen);

// --- Laser dot ---
fill(circle(laser, laserDotR), laserFill);

// --- Dimension line: 35 m (vertical, laser to arc top) ---
real dimLeftX = -arcHalfW - wallMargin - 1.0;
draw((dimLeftX, dimGap) -- (dimLeftX, R - dimGap), dimPen, Arrows(size=arrowSz));

// --- Dimension line: 35.06 m (laser to wall at edge of arc) ---
pair toWallEdge = unit(wallEdgeR - laser);
draw(laser + dimGap * toWallEdge -- wallEdgeR - dimGap * toWallEdge,
     dimPen, Arrows(size=arrowSz));

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    label("$35\;\mathrm{m}$",
          (dimLeftX, R / 2), W, labelPen);

    label("$35.06\;\mathrm{m}$",
          (laser + wallEdgeR) / 2 + (0.3, 0), E, labelPen);

    label("arc", arcLeft + (-0.2, 0.15), W, labelPen + blue);
    label("wall", wallR + (0.2, 0), E, labelPen + gray(0.2));

    label("Laser", laser, S, labelPen);
}