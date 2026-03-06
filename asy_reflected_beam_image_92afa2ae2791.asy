// reflected_beam_image.asy
// Reproduces back_and_forth_laser2.asy, but now the reflected beam also has
// its image drawn: a dashed continuation of the incident beam extending
// above the mirror, showing the "unfolded" path of total length 70 m.
// Vertical layout: laser at bottom, mirror at top, image above mirror.

import graph;

// ============================================================
// CONFIGURATION
// ============================================================

size(200, 0);

// -- Mirror segment --
real halfSeg = 1.0;                 // half-width of blue mirror segment
real segWidth = 2 * halfSeg;        // full segment width = 2.0
real mirrorY = 10 * segWidth;       // laser-to-mirror distance = 20.0

// -- Beam --
real incAngle = 0.5;                // angle of incidence (degrees from normal)

// -- Devices --
real laserW = 0.3;
real laserH = 0.45;
real detW = 0.35;
real detH = 0.4;

// -- Pens --
pen segPen     = blue + linewidth(4);
pen beamPenFwd = red + linewidth(1.2);
pen imagePen   = red + linewidth(1.2) + linetype("6 4") + opacity(0.6);
pen devicePen  = gray(0.2) + linewidth(0.8);
pen labelPen   = fontsize(25);
pen dimPen     = gray(0.2) + linewidth(0.6) + linetype("2 3");
real aSize     = 5;

// -- Toggles --
bool showLabels = true;

// ============================================================
// BEAM GEOMETRY
// ============================================================

real theta = radians(incAngle);

// Laser positioned so beam hits mirror center at neutral position
real laserX = -mirrorY * tan(theta);
pair beamOrigin = (laserX, laserH);    // beam exits top of laser box

// Beam direction: from laser to mirror center (0, mirrorY)
pair beamDir = unit((0, mirrorY) - beamOrigin);

// Hit point on mirror
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

// Mirror hit point and reflected beam landing
pair hitMirror = hitAt(mirrorY);
pair landRefl  = landFrom(hitMirror);

// Detector center at reflected beam landing
real detCenterX = landRefl.x;

// -- Image beam --
// The image continues straight through the mirror in the incident beam direction.
// Its length equals the reflected beam length (mirror to detector = mirror to image end).
real reflLength = length(landRefl - hitMirror);
pair imageEnd   = hitMirror + reflLength * beamDir;

// ============================================================
// DRAW
// ============================================================

// --- Incident beam (solid red, laser to mirror) ---
draw(beamOrigin -- hitMirror, beamPenFwd);

// --- Reflected beam (solid red, mirror to detector) ---
draw(hitMirror -- landRefl, beamPenFwd);

// --- Image of reflected beam (dashed red, above mirror) ---
draw(hitMirror -- imageEnd, imagePen);

// --- Mirror segment ---
draw((-halfSeg, mirrorY) -- (halfSeg, mirrorY), segPen);

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
// DISTANCE INDICATORS
// ============================================================

real dimX = laserX - 2.5;   // x-position of dimension lines, left of diagram

// --- Laser to mirror: 35 m ---
draw((dimX, laserH) -- (dimX, mirrorY), dimPen, Arrows(size=aSize));
label(rotate(90)*"$35 \;\mathrm{m}$", (dimX, (laserH + mirrorY) / 2), W, labelPen);

// --- Mirror to image end: 35 m ---
draw((dimX, mirrorY) -- (dimX, imageEnd.y), dimPen, Arrows(size=aSize));
label(rotate(90)*"$35 \;\mathrm{m}$", (dimX, (mirrorY + imageEnd.y) / 2), W, labelPen);

// ============================================================
// LABELS
// ============================================================

if (showLabels) {
    label("Laser", (laserX, -0.15), S, labelPen);
    label("Detector", (detCenterX, -0.15), S, labelPen);
    label("Image", imageEnd, N, labelPen);
}