size(220);

// ============================================================
// OVERHEAD FLASHLIGHT / STICK / SCREEN DIAGRAM
// ============================================================
// Origin (0,0) is at the center-bottom of the scene.
// y-axis points up (toward the screen), x-axis points right.
// Scale: 1 unit ~ 1 cm on screen; scene spans roughly
//        x in [-5,5], y in [-1,10].

// ============================================================
// 1. PARAMETERS -- all "magic numbers" live here
// ============================================================

// --- Toggle switches ---
bool showLabels     = true;   // labels on stick, screen, slit

// --- Scene layout (y-coordinates) ---
real flashlightY    = 0;      // y of flashlight row
real stickY         = 4.5;    // y-center of the stick
real screenY        = 8.5;    // y of the screen apex (top of scene)

// --- Flashlight positions (x-coordinates) ---
real flashSpacing   = 3;      // half-width of outer flashlights
pair flashL         = (-flashSpacing, flashlightY);  // left
pair flashC         = (0, flashlightY);               // center
pair flashR         = ( flashSpacing, flashlightY);   // right

// --- Flashlight body geometry ---
real flashLen       = 0.8;    // length of the body rectangle
real flashWid       = 0.4;    // width of the body rectangle
real coneLen        = 0.6;    // length of the light-cone triangle
real coneHalfW      = 0.35;   // half-width of cone mouth

// --- Flashlight aim angles (degrees from +y axis) ---
// Positive = clockwise (tilts right), Negative = counter-clockwise (tilts left)
real angleL         = -20;     // left flashlight tilted right (toward center)
real angleC         = 0;      // center flashlight aims straight up
real angleR         = 20;    // right flashlight tilted left (toward center)

// --- Stick (circle cross-section seen from above) ---
real stickRadius    = 0.35;
pair stickCenter    = (0, stickY);
pen stickPen        = black + linewidth(1.2);
pen stickFill       = gray(0.85);

// --- Screen (right-angle chevron pointing upward) ---
// Arms meet at 90 degrees at the apex; each at 45 deg from vertical.
real screenArmLen   = 5;      // length of each arm
pair screenApex     = (0, screenY);
pair screenL        = screenApex + screenArmLen * dir(180+45);  // down-left
pair screenR        = screenApex + screenArmLen * dir(-45);     // down-right
pen screenPen       = black + linewidth(2);

// --- Slit (gap at apex where the two screen arms do not meet) ---
real slitGap        = 0.25;   // half-gap distance from apex along each arm

// --- Label styling ---
pen labelPen        = fontsize(9);

// ============================================================
// 2. HELPER FUNCTION -- draw one flashlight at a position/angle
// ============================================================
// Draws a rect body + trapezoidal cone, rotated so the
// beam end points in direction (angle) degrees from +y.

void drawFlashlight(pair pos, real angle) {
  // -- body (rectangle centered at origin, then rotated/shifted) --
  path body = box((-flashWid/2, -flashLen/2),
                  ( flashWid/2,  flashLen/2));
  // -- cone (trapezoid on top of body, flaring outward) --
  pair coneBase1 = (-flashWid/2, flashLen/2);
  pair coneBase2 = ( flashWid/2, flashLen/2);
  pair coneTip1  = (-coneHalfW, flashLen/2 + coneLen);
  pair coneTip2  = ( coneHalfW, flashLen/2 + coneLen);
  path cone = coneBase1 -- coneTip1 -- coneTip2 -- coneBase2 -- cycle;

  // Apply rotation (about origin) then shift to pos
  transform t = shift(pos) * rotate(angle);

  filldraw(t * body, gray(0.3), black + linewidth(0.8));
  filldraw(t * cone, gray(0.5), black + linewidth(0.8));
}

// ============================================================
// 3. DRAW -- flashlights, stick, screen with slit gap
// ============================================================

// --- Flashlight bodies ---
drawFlashlight(flashL, angleL);
drawFlashlight(flashC, angleC);
drawFlashlight(flashR, angleR);

// --- Stick (filled circle) ---
filldraw(circle(stickCenter, stickRadius), stickFill, stickPen);

// --- Screen (two arms with a gap at the apex for the slit) ---
// Unit direction vectors along each arm away from the apex
pair dirL = unit(screenL - screenApex);  // toward down-left end
pair dirR = unit(screenR - screenApex);  // toward down-right end
// Each arm starts a small distance from the apex (creating the slit gap)
draw(screenApex + slitGap * dirL -- screenL, screenPen);
draw(screenApex + slitGap * dirR -- screenR, screenPen);

// ============================================================
// 4. LABELS
// ============================================================
if (showLabels) {
  // Place "Stick" label to the right, clearing the circle edge
  label("Stick", stickCenter + (stickRadius + 0.15) * E, E, labelPen);
  label("Screen", (screenR + screenApex) / 2, NE, labelPen);
  label("Slit", screenApex, N, labelPen);
}