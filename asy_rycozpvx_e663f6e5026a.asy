//TeXeR source: https://artofproblemsolving.com/texer/rycozpvx
unitsize(2 cm);

// ============================================================
// CONFIGURATION — all tweakable parameters live here
// ============================================================
// Origin (0,0) is at the base of the mirror on the ground.
// Scale: 1 unit = ~1 cm on screen; figure height ~4 keeps it
// readable in AoPS forum posts.

// --- Dimensions ---
real figureHeight  = 4;           // total height of stick figure
real mirrorWidth   = 0.15;        // half-thickness of mirror rectangle
real headRadius    = 0.35;        // stick figure head
real gapToMirror   = 2.8;         // horizontal distance: figure feet to mirror

// --- Pens ---
pen figurePen      = black + 1.2bp; // stick figure outline
pen mirrorPen      = blue + 1.5bp;  // mirror border
pen mirrorFillPen  = lightblue + opacity(0.5); // translucent glass look
pen groundPen      = gray(0.4) + 0.8bp;
pen eyePen         = black + 2.5bp; // dot for the eye

// --- Toggles ---
bool showLabels    = true;        // toggle "mirror" label
bool showGround    = true;        // toggle ground line
bool showEye       = true;        // toggle eye dot on head

// ============================================================
// DERIVED VALUES — computed from the parameters above
// ============================================================

// Stick figure stands to the LEFT of the mirror, facing right (+x).
real figureX         = -gapToMirror;
real bodyTop         = figureHeight - 2*headRadius; // neck height
real bodyBottom      = figureHeight * 0.42;         // hip height
pair headCenter      = (figureX, bodyTop + headRadius);

// Eye position: offset toward mirror (+x) and slightly up
pair eyePos          = headCenter + (0.12, 0.06);
real eyeY            = headCenter.y + 0.06;

// Key vertical positions
real topOfHead       = figureHeight;   // top of head = 4.0
real feetY           = 0;

// --- Adjusted mirror position ---
// Top: halfway between top of head and eye
real mirrorTop       = (topOfHead + eyeY) / 2;
// Bottom: halfway from original mirror bottom (2.2) to feet
real mirrorBottom    = (eyeY + feetY) / 2;  // midway from eye to feet
real mirrorHeight    = mirrorTop - mirrorBottom;

// Mirror rectangle corners
pair mirrorBL = (-mirrorWidth, mirrorBottom);
pair mirrorBR = ( mirrorWidth, mirrorBottom);
pair mirrorTL = (-mirrorWidth, mirrorTop);
pair mirrorTR = ( mirrorWidth, mirrorTop);

// Arm and leg geometry
real armSpread    = 0.5;
real legSpread    = 0.45;

// ============================================================
// HELPER — draw a complete stick figure at horizontal position x
// ============================================================

void drawStickFigure(real x, real totalH, real r,
real neckY, real hipY, pen p) {
// Head
draw(circle((x, neckY + r), r), p);

// Body: neck to hip
draw((x, neckY)--(x, hipY), p);

// Arms — right arm reaches toward mirror, left arm relaxed
pair shoulder = (x, neckY - 0.12*totalH);
draw(shoulder--(x + armSpread, shoulder.y - 0.30), p);
draw(shoulder--(x - armSpread, shoulder.y - 0.50), p);

// Legs — slight asymmetry for a natural stance
pair hip = (x, hipY);
draw(hip--(x - legSpread, 0), p);
draw(hip--(x + legSpread, 0), p);
}

// ============================================================
// DRAW — ground, mirror, figure, eye, labels
// ============================================================

// --- Ground line ---
if (showGround) {
real groundLeft  = figureX - 1.0;
real groundRight = mirrorWidth + 1.0;
draw((groundLeft, 0)--(groundRight, 0), groundPen);
}

// --- Mirror (fill first, then border) ---
filldraw(mirrorBL--mirrorTL--mirrorTR--mirrorBR--cycle,
mirrorFillPen, mirrorPen);

// Hatch marks on back of mirror to indicate wall/backing
pen tickPen = gray(0.5) + 0.6bp;
int nTicks  = 4;
for (int i = 0; i < nTicks; ++i) {
real y = mirrorBottom + (i + 0.5) * mirrorHeight / nTicks;
// Short diagonal ticks behind (+x side of) mirror
draw((mirrorWidth, y)--(mirrorWidth + 0.18, y - 0.12), tickPen);
}

// --- Stick figure ---
drawStickFigure(figureX, figureHeight, headRadius,
bodyTop, bodyBottom, figurePen);

// --- Eye (shows figure is looking at mirror) ---
if (showEye) {
dot(eyePos, eyePen);
}

// ============================================================
// RED ARROWS — light rays
// ============================================================
pen arrowPen = red + 1.0bp;

// Feet midpoint
real feetMidX = figureX;  // midway between (figureX-legSpread,0) and (figureX+legSpread,0)
pair feetMid = (feetMidX, 0);

// Points on mirror surface (at x = 0, the front face)
pair mirrorTopPt  = (0, mirrorTop);
pair mirrorBotPt  = (0, mirrorBottom);
pair topHead      = (figureX, topOfHead);

// Arrow 1: top of head -> top of mirror
draw(topHead--mirrorTopPt, arrowPen, Arrow(6));

// Arrow 2: top of mirror -> eye
draw(mirrorTopPt--eyePos, arrowPen, Arrow(6));

// Arrow 3: feet midpoint -> bottom of mirror
draw(feetMid--mirrorBotPt, arrowPen, Arrow(6));

// Arrow 4: bottom of mirror -> eye
draw(mirrorBotPt--eyePos, arrowPen, Arrow(6));

// ============================================================
// SEGMENT LABELS a, b, c, d — to the left of the person
// ============================================================

// Vertical positions for segment boundaries
real yA_top    = topOfHead;                    // top of head
real yA_bot    = (topOfHead + eyeY) / 2;       // midway head top to eye (= mirrorTop)
real yB_bot    = eyeY;                         // eye level
real yC_bot    = (eyeY + feetY) / 2;           // midway eye to bottom
real yD_bot    = feetY;                        // bottom (feet)

// x position for segment lines and labels (to the left of the person)
real segX      = figureX - 1.2;   // vertical line for segments
real labelX    = segX - 0.4;      // label position

pen segPen     = black + 1.0bp;
pen dashPen    = black + 0.5bp + linetype("4 4");

// Draw segment lines with small horizontal end-caps
real capW = 0.08;

// Segment a
draw((segX, yA_top)--(segX, yA_bot), segPen);
draw((segX - capW, yA_top)--(segX + capW, yA_top), segPen);
draw((segX - capW, yA_bot)--(segX + capW, yA_bot), segPen);
label("$a$", (labelX, (yA_top + yA_bot)/2), fontsize(9pt));

// Segment b
draw((segX, yA_bot)--(segX, yB_bot), segPen);
draw((segX - capW, yB_bot)--(segX + capW, yB_bot), segPen);
label("$b$", (labelX, (yA_bot + yB_bot)/2), fontsize(9pt));

// Segment c
draw((segX, yB_bot)--(segX, yC_bot), segPen);
draw((segX - capW, yC_bot)--(segX + capW, yC_bot), segPen);
label("$c$", (labelX, (yB_bot + yC_bot)/2), fontsize(9pt));

// Segment d
draw((segX, yC_bot)--(segX, yD_bot), segPen);
draw((segX - capW, yD_bot)--(segX + capW, yD_bot), segPen);
label("$d$", (labelX, (yC_bot + yD_bot)/2), fontsize(9pt));

// Horizontal dashed lines from segment endpoints to mirror vertical (x=0)
// Top of head
draw((segX, yA_top)--(0, yA_top), dashPen);
// Midway head-to-eye (= mirror top)
draw((segX, yA_bot)--(0, yA_bot), dashPen);
// Eye level
draw((segX, yB_bot)--(0, yB_bot), dashPen);
// Midway eye-to-bottom
draw((segX, yC_bot)--(0, yC_bot), dashPen);
// Bottom (feet)
draw((segX, yD_bot)--(0, yD_bot), dashPen);

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
label("mirror", (0, mirrorBottom), S, fontsize(9pt));
}