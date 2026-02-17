//TeXeR source: https://artofproblemsolving.com/texer/ilphzfew
unitsize(1 cm);

// ============================================================
// CONFIGURATION — all tweakable parameters live here
// ============================================================

// Origin (0,0) is at the base of the mirror on the ground.
// Scale: 1 unit = ~1 cm on screen; figure height ~4 keeps it
// readable in AoPS forum posts.

// --- Dimensions ---
real figureHeight   = 4;          // total height of stick figure
real mirrorHeight   = 1;          // ~1/4 of figure height
real mirrorWidth    = 0.15;       // half-thickness of mirror rectangle
real headRadius     = 0.35;       // stick figure head
real gapToMirror    = 2.8;        // horizontal distance: figure feet to mirror

// --- Vertical placement ---
real mirrorBottom   = 2.2;        // mirror base above ground (eye-level centering)

// --- Pens ---
pen figurePen       = black + 1.2bp;  // stick figure outline
pen mirrorPen       = blue + 1.5bp;   // mirror border
pen mirrorFillPen   = lightblue + opacity(0.5); // translucent glass look
pen groundPen       = gray(0.4) + 0.8bp;
pen eyePen          = black + 2.5bp;  // dot for the eye

// --- Toggles ---
bool showLabels     = true;       // toggle "mirror" label
bool showGround     = true;       // toggle ground line
bool showEye        = true;       // toggle eye dot on head

// ============================================================
// DERIVED VALUES — computed from the parameters above
// ============================================================

// Stick figure stands to the LEFT of the mirror, facing right (+x).
real figureX        = -gapToMirror;
real bodyTop        = figureHeight - 2*headRadius; // neck height
real bodyBottom     = figureHeight * 0.42;         // hip height
pair headCenter     = (figureX, bodyTop + headRadius);

// Eye position: offset toward mirror (+x) and slightly up
pair eyePos         = headCenter + (0.12, 0.06);

// Mirror rectangle corners
real mirrorTop      = mirrorBottom + mirrorHeight;
pair mirrorBL       = (-mirrorWidth, mirrorBottom);
pair mirrorBR       = ( mirrorWidth, mirrorBottom);
pair mirrorTL       = (-mirrorWidth, mirrorTop);
pair mirrorTR       = ( mirrorWidth, mirrorTop);

// Arm and leg geometry
real armSpread      = 0.5;
real legSpread      = 0.45;

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
// LABELS
// ============================================================

if (showLabels) {
label("mirror", (0, mirrorBottom), S, fontsize(9pt));
}