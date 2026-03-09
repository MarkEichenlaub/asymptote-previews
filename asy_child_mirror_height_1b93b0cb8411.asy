import graph;

// Overall figure size
size(500, 280, keepAspect=false);

// === Parameters ===
real adultHeight = 6;        // adult height in drawing units
real childHeight = adultHeight * 11.0/15.0;  // child is 11/15 of adult
real hatHeight = adultHeight - childHeight;   // hat fills the gap to adult height

real groundY = 0;
real headRadius = 0.45;

// Eye position (slightly below top of head)
real eyeFraction = 0.93;  // eyes at 93% of height

real adultEyeY = adultHeight * eyeFraction;

// Mirror sized and positioned for the adult to see head-to-toe
// Classic result: mirror top = midpoint(eyes, top of head), mirror bottom = midpoint(eyes, feet)
real mirrorTop = (adultEyeY + adultHeight) / 2;
real mirrorBottom = adultEyeY / 2;
real mirrorHeight = mirrorTop - mirrorBottom;  // = adultHeight/2 as expected

real mirrorDist = 4;  // horizontal distance from person to mirror

// Horizontal offset for the second picture
real xOffset = 13;

// Ground extends a bit beyond the mirror
real groundLeft = -1.5;
real groundRight = mirrorDist + 1.5;

// === Helper functions ===

// Draw a stick figure person at position (px, py) with given height
void drawPerson(real px, real py, real h, real hradius, pen p=black) {
    real headCenter = py + h - hradius;
    real neckY = headCenter - hradius;
    real shoulderY = neckY - 0.15 * h;
    real waistY = py + 0.4 * h;
    real footY = py;

    // Head
    draw(circle((px, headCenter), hradius), linewidth(1.5) + p);

    // Body (neck to waist)
    draw((px, neckY) -- (px, waistY), linewidth(1.5) + p);

    // Arms
    real armSpan = 0.45;
    draw((px - armSpan, shoulderY - 0.1*h) -- (px, shoulderY) -- (px + armSpan, shoulderY - 0.1*h), linewidth(1.5) + p);

    // Legs
    real legSpan = 0.35;
    draw((px, waistY) -- (px - legSpan, footY), linewidth(1.5) + p);
    draw((px, waistY) -- (px + legSpan, footY), linewidth(1.5) + p);
}

// Draw a top hat on a person at position (px, py) with person height h
void drawTopHat(real px, real py, real h, real hradius, real hatH) {
    real headTop = py + h;
    real brimY = headTop;
    real brimHalfWidth = hradius * 1.6;
    real crownHalfWidth = hradius * 0.85;
    real crownTop = brimY + hatH;
    real brimThick = 0.1;

    // Brim
    fill((px - brimHalfWidth, brimY - brimThick) -- (px + brimHalfWidth, brimY - brimThick) --
         (px + brimHalfWidth, brimY + brimThick) -- (px - brimHalfWidth, brimY + brimThick) -- cycle,
         gray(0.15));
    draw((px - brimHalfWidth, brimY - brimThick) -- (px + brimHalfWidth, brimY - brimThick) --
         (px + brimHalfWidth, brimY + brimThick) -- (px - brimHalfWidth, brimY + brimThick) -- cycle,
         linewidth(1.0));

    // Crown
    fill((px - crownHalfWidth, brimY + brimThick) -- (px + crownHalfWidth, brimY + brimThick) --
         (px + crownHalfWidth, crownTop) -- (px - crownHalfWidth, crownTop) -- cycle,
         gray(0.15));
    draw((px - crownHalfWidth, brimY + brimThick) -- (px + crownHalfWidth, brimY + brimThick) --
         (px + crownHalfWidth, crownTop) -- (px - crownHalfWidth, crownTop) -- cycle,
         linewidth(1.0));
}

// Draw mirror at horizontal position mx, from bottom to top
void drawMirror(real mx, real bot, real top) {
    // Mirror surface (thick blue line)
    draw((mx, bot) -- (mx, top), linewidth(3) + blue);
    // Wall behind mirror
    real wallThick = 0.3;
    fill((mx, bot) -- (mx + wallThick, bot) -- (mx + wallThick, top) -- (mx, top) -- cycle, gray(0.75));
    draw((mx, bot) -- (mx + wallThick, bot) -- (mx + wallThick, top) -- (mx, top) -- cycle, linewidth(0.5));

    // Dimension line to the right of the mirror
    real dimX = mx + wallThick + 0.6;  // offset from wall
    pen dimPen = linewidth(0.6) + dotted;
    draw((dimX, bot) -- (dimX, top), dimPen, arrow=Arrows(size=4));
    label("$75 \;\mathrm{cm}$", (dimX, (bot + top) / 2), E, fontsize(10pt));
}

// Draw ground
void drawGround(real left, real right, real y) {
    draw((left, y) -- (right, y), linewidth(1.0));
    // Hatching below ground
    int n = 18;
    real dx = (right - left) / n;
    for (int i = 0; i <= n; ++i) {
        real x = left + i * dx;
        draw((x, y) -- (x - 0.25, y - 0.35), linewidth(0.4));
    }
}

// Draw reflection rays.
// Physics: light from body point -> mirror -> eye.
// For vertical mirror, reflected ray from (mx, my) to eye (ex, ey) corresponds to
// a body point at x = ex, y = 2*my - ey.
// Top mirror point -> sees y_top = 2*mTop - eyeY
// Bottom mirror point -> sees y_bot = 2*mBot - eyeY
//
// Arrows show light direction: body point -> mirror -> eye
void drawRays(real personX, real eyeY, real mx, real mBot, real mTop,
              real maxVisibleY) {
    // What the person sees via each mirror edge
    real seenTop = 2 * mTop - eyeY;   // highest visible point
    real seenBot = 2 * mBot - eyeY;   // lowest visible point

    pen topPen = linewidth(1.0) + red;
    pen botPen = linewidth(1.0) + orange;

    // --- Top ray (red): body point at seenTop -> mirror top -> eye ---
    // Segment 1: mirror top -> eye (arrow toward eye)
    draw((mx, mTop) -- (personX, eyeY), topPen, arrow=ArcArrow(size=5));

    // Segment 2: source point -> mirror top (arrow toward mirror)
    if (seenTop > maxVisibleY) {
        // Source is above the visible area; draw ray from mirror toward
        // the source but clip it to stay in the picture.
        // Direction from mirror top toward source: (personX - mx, seenTop - mTop)
        real dx = personX - mx;
        real dy = seenTop - mTop;
        // Clip: stop at y = maxVisibleY + 1.2 (a bit above the person/hat)
        real clipY = maxVisibleY + 1.2;
        real t = (clipY - mTop) / dy;  // parametric t along the ray
        real clipX = mx + t * dx;
        draw((clipX, clipY) -- (mx, mTop), topPen, arrow=ArcArrow(size=5));
    } else {
        // Source is on the body; draw from source to mirror
        draw((personX, seenTop) -- (mx, mTop), topPen, arrow=ArcArrow(size=5));
        // Offset dot slightly to the right so it's visible next to the head
        dot((personX + 0.15, seenTop), red + linewidth(4));
    }

    // --- Bottom ray (orange): body point at seenBot -> mirror bottom -> eye ---
    // Segment 1: mirror bottom -> eye (arrow toward eye)
    draw((mx, mBot) -- (personX, eyeY), botPen, arrow=ArcArrow(size=5));

    // Segment 2: source point -> mirror bottom (arrow toward mirror)
    real botTargetY = max(seenBot, groundY);
    draw((personX, botTargetY) -- (mx, mBot), botPen, arrow=ArcArrow(size=5));
    dot((personX + 0.15, botTargetY), orange + linewidth(4));
}

// ============================================================
// LEFT PICTURE: Adult
// ============================================================

real personX_L = 0;
real mirrorX_L = mirrorDist;

drawGround(groundLeft, groundRight, groundY);
drawPerson(personX_L, groundY, adultHeight, headRadius);
drawMirror(mirrorX_L, mirrorBottom, mirrorTop);

real eyeY_L = adultEyeY;
drawRays(personX_L, eyeY_L, mirrorX_L, mirrorBottom, mirrorTop, adultHeight);

// Label
label("\textbf{Adult ($150 \;\mathrm{cm}$)}",
      ((groundLeft + groundRight) / 2, groundY - 1.6),
      fontsize(14pt));

// ============================================================
// RIGHT PICTURE: Child
// ============================================================

real personX_R = xOffset;
real mirrorX_R = xOffset + mirrorDist;

drawGround(xOffset + groundLeft, xOffset + groundRight, groundY);
drawPerson(personX_R, groundY, childHeight, headRadius * 0.9);
drawTopHat(personX_R, groundY, childHeight, headRadius * 0.9, hatHeight);
drawMirror(mirrorX_R, mirrorBottom, mirrorTop);

real eyeY_R = childHeight * eyeFraction;
drawRays(personX_R, eyeY_R, mirrorX_R, mirrorBottom, mirrorTop, childHeight + hatHeight);

// Label
label("\textbf{Child ($110 \;\mathrm{cm}$)}",
      (xOffset + (groundLeft + groundRight) / 2, groundY - 1.6),
      fontsize(14pt));