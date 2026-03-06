// window_motions.asy
// Three multiple-choice illustrations showing different motions of a line segment:
//   a) side-to-side   b) forward-backward   c) tilting
// Origin (0,0) at center of panel (a); panels spaced along x-axis.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

size(450, 0);

// -- Geometry --
real spacing = 5.5;         // x-distance between panel centers
real halfSeg = 1.0;         // half-length of the blue segment
real ghostShift = 0.55;     // translation for ghost copies (a, b)
real tiltAngle = 25;        // tilt angle in degrees for ghost copies (c)
real arrowGap = 0.15;       // gap between ghost end and arrow start
real arrowLen = 0.5;        // length of straight motion arrows
real labelY = -1.6;         // y-position for labels below diagrams

// -- Pens --
pen segPen   = blue + linewidth(4);                       // main segment
pen ghostPen = mediumblue + linewidth(3) + opacity(0.3);  // ghost positions
pen arrPen   = gray(0.2) + linewidth(1.0);                // motion arrows
real aSize   = 5;                                         // arrowhead size

// -- Toggles --
bool showLabels = true;
bool showGhosts = true;

// ============================================================
// PANEL CENTERS
// ============================================================

pair pa = (0, 0);              // (a) side-to-side
pair pb = (spacing, 0);        // (b) forward-backward
pair pc = (2*spacing, 0);      // (c) tilting

// ============================================================
// HELPERS
// ============================================================

// Draw a horizontal segment centered at c, rotated by `angle` degrees
void drawSeg(pair c, real angle = 0, pen p = segPen) {
    draw(c + halfSeg*dir(angle + 180) -- c + halfSeg*dir(angle), p);
}

// ============================================================
// DRAW PANELS
// ============================================================

// --- (a) Side-to-side: segment translates left/right ---
if (showGhosts) {
    drawSeg(pa + (-ghostShift, 0), p=ghostPen);
    drawSeg(pa + ( ghostShift, 0), p=ghostPen);
}
drawSeg(pa);
// Arrow pointing right (beyond right ghost)
draw((pa.x + halfSeg + ghostShift + arrowGap, 0) --
     (pa.x + halfSeg + ghostShift + arrowGap + arrowLen, 0),
     arrPen, Arrow(size=aSize));
// Arrow pointing left (beyond left ghost)
draw((pa.x - halfSeg - ghostShift - arrowGap, 0) --
     (pa.x - halfSeg - ghostShift - arrowGap - arrowLen, 0),
     arrPen, Arrow(size=aSize));

// --- (b) Forward-backward: segment translates perpendicular to itself ---
if (showGhosts) {
    drawSeg(pb + (0,  ghostShift), p=ghostPen);
    drawSeg(pb + (0, -ghostShift), p=ghostPen);
}
drawSeg(pb);
// Arrow pointing up (beyond upper ghost)
draw((pb.x, ghostShift + arrowGap) --
     (pb.x, ghostShift + arrowGap + arrowLen),
     arrPen, Arrow(size=aSize));
// Arrow pointing down (beyond lower ghost)
draw((pb.x, -ghostShift - arrowGap) --
     (pb.x, -ghostShift - arrowGap - arrowLen),
     arrPen, Arrow(size=aSize));

// --- (c) Tilting: segment rotates about its center ---
if (showGhosts) {
    drawSeg(pc, angle= tiltAngle, p=ghostPen);
    drawSeg(pc, angle=-tiltAngle, p=ghostPen);
}
drawSeg(pc);
// Curved double-headed arrow above center indicating back-and-forth rotation
real curveR = 0.6;
draw(arc(pc, curveR, 15, 165), arrPen, Arrows(size=aSize));

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    label("\textsf{\bfseries a)} side-to-side",     (pa.x, labelY), S);
    label("\textsf{\bfseries b)} forward-backward",  (pb.x, labelY), S);
    label("\textsf{\bfseries c)} tilting",            (pc.x, labelY), S);
}