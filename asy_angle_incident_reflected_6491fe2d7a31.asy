import graph;

size(250);

// ============================================================
// CONFIGURATION — all tweakable parameters
// ============================================================

// Origin is at ground level, laser roughly centered.
// Y-axis points up toward the window; X-axis is horizontal.

// --- Layout ---
real windowY = 8;            // height of window above ground
real laserX = -0.25;          // laser horizontal position
real deviceY = 0;            // vertical position of devices (ground level)

// --- Window segment (blue reflection patch) ---
// Adjust these to simulate window vibration in later diagrams.
real windowHitX = 0.5;       // x-position where beam hits window
real windowSegHalf = 0.5;    // half-length of blue segment
real windowAngle = 0;        // tilt of blue segment (degrees); 0 = flat horizontal

// --- Full window & wall ---
real windowHalfLen = 3.0;    // half-length of the full window
real wallExtend = 3.0;       // how far wall extends below window on "inside" side
real wallThick = 0.35;       // thickness of building wall
// "Inside" is to the RIGHT (positive x direction)

// --- Beam misalignment ---
real beamMisalign = 0.1;    // beam hits this far from detector's inner edge
                             // (small = barely catches the detector)

// --- Device sizes ---
real laserW = 0.9;           // laser box width
real laserH = 0.55;          // laser box height
real detectorW = 0.7;        // detector box width
real detectorH = 0.5;        // detector box height

// --- Pens ---
pen beamPen = red + linewidth(1.2);
pen windowPen = gray(0.35) + linewidth(2.5);
pen blueSegPen = blue + linewidth(3.5);
pen wallPen = gray(0.3) + linewidth(1.0);
pen wallFill = gray(0.4);
pen devicePen = gray(0.2) + linewidth(1.0);
pen labelPen = fontsize(9);

// --- Toggles ---
bool showLabels = true;
bool showWall = false;

// ============================================================
// DEFINE OBJECTS
// ============================================================

// --- Laser ---
pair laserPos = (laserX, deviceY);
pair beamStart = (laserX, deviceY + laserH);  // beam exits top of laser box

// --- Window hit point ---
pair windowHit = (windowHitX, windowY);

// --- Blue segment endpoints (rotatable for vibration) ---
pair blueDir = (cos(radians(windowAngle)), sin(radians(windowAngle)));
pair blueSeg1 = windowHit - windowSegHalf * blueDir;
pair blueSeg2 = windowHit + windowSegHalf * blueDir;

// --- Full window ---
pair windowLeft = (-windowHalfLen, windowY);
pair windowRight = (windowHalfLen, windowY);

// --- Wall (extends down from right end of window) ---
pair wallTopInner = (windowHalfLen, windowY);
pair wallBottomInner = (windowHalfLen, windowY - wallExtend);
pair wallTopOuter = (windowHalfLen + wallThick, windowY);
pair wallBottomOuter = (windowHalfLen + wallThick, windowY - wallExtend);

// --- Reflected beam via law of reflection ---
// Surface normal for blue segment, pointing toward the incoming beam.
// For a segment tilted by windowAngle from horizontal, the two candidate
// normals are (+sin, -cos) and (-sin, +cos). We pick the one facing
// the incoming beam (downward-ish for small angles).
pair surfaceNormal = (sin(radians(windowAngle)), -cos(radians(windowAngle)));

// Incoming beam direction (laser -> window)
pair inDir = windowHit - beamStart;

// Law of reflection: d_ref = d_in - 2(d_in · n̂) n̂
real dp = dot(inDir, surfaceNormal);
pair refDir = inDir - 2 * dp * surfaceNormal;

// Trace reflected ray to ground level (y = deviceY)
real t_land = (deviceY - windowHit.y) / refDir.y;
pair landingPoint = windowHit + t_land * refDir;

// Detector: positioned so reflected beam barely hits its inner (laser-side) edge
pair detectorPos = (landingPoint.x + detectorW / 2 - beamMisalign, deviceY);

// Beam endpoint at top of detector
real t_det = (deviceY + detectorH - windowHit.y) / refDir.y;
pair beamEnd = windowHit + t_det * refDir;

// ============================================================
// DRAW
// ============================================================

// --- Building wall (behind window) ---
if (showWall) {
    path wallPath = wallTopInner -- wallTopOuter
                    -- wallBottomOuter -- wallBottomInner -- cycle;
    fill(wallPath, wallFill);
    draw(wallPath, wallPen);
}

// --- Window (gray line, full span) ---
draw(windowLeft -- windowRight, windowPen);

// --- Blue reflection segment (on top of window) ---
draw(blueSeg1 -- blueSeg2, blueSegPen);

// --- Laser beam (outgoing: laser -> window) ---
draw(beamStart -- windowHit, beamPen);

// --- Laser beam (reflected: window -> detector) ---
draw(windowHit -- beamEnd, beamPen);

// --- Laser device ---
path laserBox = shift(laserPos) * box((-laserW/2, 0), (laserW/2, laserH));
fill(laserBox, gray(0.85));
draw(laserBox, devicePen);
fill(circle((laserX, deviceY + laserH), 0.08), red);  // aperture dot

// --- Detector device ---
path detBox = shift(detectorPos) * box((-detectorW/2, 0), (detectorW/2, detectorH));
fill(detBox, gray(0.85));
draw(detBox, devicePen);
fill(circle((detectorPos.x, deviceY + detectorH), 0.08), gray(0.2));  // sensor dot

// ============================================================
// ANGLE ARC between incident and reflected rays
// ============================================================

// Directions away from windowHit along each ray
real incDeg = degrees(-inDir);    // direction back toward laser
real refDeg = degrees(refDir);    // direction toward detector

// Draw arc from reflected ray to incident ray (smaller angle side)
real arcRadius = 1.2;
draw(arc(windowHit, arcRadius, refDeg, incDeg), gray(0.2) + linewidth(0.8));

// ============================================================
// LABEL
// ============================================================

if (showLabels) {
    label("Laser", laserPos, S, labelPen);
    label("Detector", detectorPos, S, labelPen);
    label("Window", (windowHitX, windowY), 2.0*N + 1.5*W, labelPen);

    
}