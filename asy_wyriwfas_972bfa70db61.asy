// Human eye diagram with light rays converging at the pupil
// and hitting the retina at the back of the eye.
//
// Origin: center of the eye ellipse, so all geometry
//         is symmetric about (0,0).
// Scale:  unitsize 1 cm; eye ~3 cm wide for clear detail.

import geometry;  // for intersectionpoints with ellipse path
size(8cm);

// ===== Toggle switches =====
bool showLabels = true;  // set false to hide "retina" label

// ===== Magic numbers =====
// -- Eye shape --
real eyeWidth  = 1.8;    // semi-axis, horizontal (cm)
real eyeHeight = 1.8;  // semi-axis, vertical (cm)

// -- Pupil --
real pupilX     = -1.6;   // x-position of pupil (front of eye)
real pupilSize  = 0.08;   // radius of the dot

// -- Light rays --
real rayStartX  = -5;     // where incoming rays originate (left of eye)
// Vertical offsets of the three rays at their starting x
real rayOffsetTop = 1.4;
real rayOffsetMid = 0.3;
real rayOffsetBot = -1.1;

// -- Pens --
pen eyePen   = black + 1.2bp;
pen rayPenR  = red   + 1bp;
pen rayPenG  = deepgreen + 1bp;
pen rayPenB  = blue  + 1bp;
pen pupilPen = black;
real labelSize = 10;  // font size for "retina"

// ===== Define objects =====
// Pupil point (where all rays converge at the front of the eye)
pair pupil = (pupilX, 0);

// Eye outline as an ellipse path
path eyePath = ellipse((0,0), eyeWidth, eyeHeight);

// Ray source points (outside the eye, to the left)
pair srcTop = (rayStartX, rayOffsetTop);
pair srcMid = (rayStartX, rayOffsetMid);
pair srcBot = (rayStartX, rayOffsetBot);

// ===== Compute retina intersection points =====
// Each ray continues from the pupil into the eye and hits the
// back wall (right half of the ellipse).  We shoot a long line
// through the pupil and find where it exits the ellipse.

pair retinalHit(pair src) {
  // Direction from source through the pupil, extended far right
  pair dir = unit(pupil - src);
  path ray = pupil -- (pupil + 8 * dir);
  // Find intersections with the ellipse
  real[] ts = intersect(ray, eyePath);
  if (ts.length > 0)
    return point(ray, ts[0]);
  return pupil;  // fallback
}

pair hitTop = retinalHit(srcTop);
pair hitMid = retinalHit(srcMid);
pair hitBot = retinalHit(srcBot);

// ===== Draw =====
// 1. Eye outline (fill white so rays behind are hidden)
filldraw(eyePath, white, eyePen);

// 2. Light rays: source -> pupil -> retina (with arrow at retina end)
draw(srcTop -- pupil, rayPenR);
draw(pupil -- hitTop, rayPenR, EndArrow(5));

draw(srcMid -- pupil, rayPenG);
draw(pupil -- hitMid, rayPenG, EndArrow(5));

draw(srcBot -- pupil, rayPenB);
draw(pupil -- hitBot, rayPenB, EndArrow(5));

// 3. Pupil dot (drawn on top of rays)
fill(circle(pupil, pupilSize), pupilPen);

// ===== Label =====
if (showLabels) {
  // Label the back of the eye (retina) near the rightmost point
  label("\textbf{retina}", (eyeWidth + 0.15, 0), E, fontsize(labelSize));
}