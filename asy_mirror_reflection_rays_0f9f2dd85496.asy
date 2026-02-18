size(350,280);

// Settings
real poleX = 0;
real poleY = 0;
real poleR = 1.2;

// Clip bounds
real clipLeft = -7;
real clipRight = 7;
real clipBottom = -6.5;
real clipTop = 7.5;

// Mirror at the TOP — right end directly above pole center
pair mirrorLeft = (-6, 5);
pair mirrorRight = (poleX, 5);

// Light rays approach from below-right, traveling up-left toward mirror
real angle = 115;
pair d = dir(angle);

// Reflected direction (flip y-component for horizontal mirror)
pair dRef = (d.x, -d.y);

// Perpendicular to ray direction
pair perp = dir(angle + 90);

// Tangent ray spacing: perpendicular offsets +/- poleR from center.
// Horizontal separation at mirror / 6 => perp step = poleR/3 = 0.4
real perpStep = poleR / 3.0;

// Range: keep same area of view (offsets ~-7 to 7 in perp direction)
int nMax = 18;

// How far past the mirror line rays that miss continue before ending
real overshoot = 1.5;

// Helper: clamp a ray from P in direction v to clip box edge
pair clipRayEnd(pair P, pair v) {
real tmax = 1e9;
if (v.x > 0) tmax = min(tmax, (clipRight - P.x) / v.x);
if (v.x < 0) tmax = min(tmax, (clipLeft - P.x) / v.x);
if (v.y > 0) tmax = min(tmax, (clipTop - P.y) / v.y);
if (v.y < 0) tmax = min(tmax, (clipBottom - P.y) / v.y);
return P + tmax * v;
}

// Helper: clamp ray start to clip box entry point
pair clipRayStart(pair P, pair v) {
real tmin = 0;
if (v.x > 0 && P.x < clipLeft) tmin = max(tmin, (clipLeft - P.x) / v.x);
if (v.x < 0 && P.x > clipRight) tmin = max(tmin, (clipRight - P.x) / v.x);
if (v.y > 0 && P.y < clipBottom) tmin = max(tmin, (clipBottom - P.y) / v.y);
if (v.y < 0 && P.y > clipTop) tmin = max(tmin, (clipTop - P.y) / v.y);
return P + tmin * v;
}

for (int i = -nMax; i <= nMax; ++i) {
real offset = i * perpStep;
pair origin_on_line = offset * perp;

real t_start = (-7 - origin_on_line.y) / d.y;
pair start = origin_on_line + t_start * d;

// Clamp start to clip box entry
pair visStart = clipRayStart(start, d);

// Intersection with pole circle (incident ray)
real sx = start.x - poleX;
real sy = start.y - poleY;
real a = d.x * d.x + d.y * d.y;
real b = 2 * (sx * d.x + sy * d.y);
real c = sx * sx + sy * sy - poleR * poleR;
real disc = b * b - 4 * a * c;

// Use a small tolerance so tangent rays are treated as missing the pole
if (disc > 0.001) {
// Ray hits pole — draw up to first intersection
real t1 = (-b - sqrt(disc)) / (2 * a);
if (t1 > 0) {
pair hitPoint = start + t1 * d;
draw(visStart--hitPoint, orange+linewidth(1.0), Arrow(size=5));
}
} else {
// Ray misses pole (or is tangent) — find where it meets the mirror line y=5
real t_mirror = (5 - start.y) / d.y;
pair mirrorHit = start + t_mirror * d;

if (mirrorHit.x >= mirrorLeft.x && mirrorHit.x <= mirrorRight.x) {
// Ray hits the mirror
draw(visStart--mirrorHit, orange+linewidth(1.0), Arrow(size=5));

// Reflected ray from mirror
real rsx = mirrorHit.x - poleX;
real rsy = mirrorHit.y - poleY;
real ra = dRef.x * dRef.x + dRef.y * dRef.y;
real rb = 2 * (rsx * dRef.x + rsy * dRef.y);
real rc = rsx * rsx + rsy * rsy - poleR * poleR;
real rdisc = rb * rb - 4 * ra * rc;

if (rdisc > 0.001) {
real rt1 = (-rb - sqrt(rdisc)) / (2 * ra);
if (rt1 > 0) {
pair rHitPoint = mirrorHit + rt1 * dRef;
draw(mirrorHit--rHitPoint, orange+linewidth(1.0), Arrow(size=5));
} else {
pair endPt = clipRayEnd(mirrorHit, dRef);
draw(mirrorHit--endPt, orange+linewidth(1.0), Arrow(size=5));
}
} else {
pair endPt = clipRayEnd(mirrorHit, dRef);
draw(mirrorHit--endPt, orange+linewidth(1.0), Arrow(size=5));
}
} else if (mirrorHit.x > mirrorRight.x) {
// Ray passes to the right of the mirror — continue a short distance past mirror line
pair endPt = mirrorHit + overshoot * d;
draw(visStart--endPt, orange+linewidth(1.0), Arrow(size=5));
} else {
// Ray misses mirror to the left — draw to clip edge
pair endPt = clipRayEnd(visStart, d);
draw(visStart--endPt, orange+linewidth(1.0), Arrow(size=5));
}
}
}

// Draw mirror on top of rays
draw(mirrorLeft--mirrorRight, linewidth(6)+black);
label("Mirror", (-3, 5.7), N, fontsize(11));

// Draw pole (solid red circle) on top of everything
filldraw(circle((poleX, poleY), poleR), red, darkred+linewidth(1.5));
label("Pole", (poleX, poleY - poleR - 0.5), S, fontsize(11));

// Blue O
real t_center = (5 - poleY) / d.y;
pair centerMirrorHit = (poleX, poleY) + t_center * d;
pair midPt = 0.5 * (centerMirrorHit + (poleX, poleY));
real xsz = 0.35;
real poleWidth = 2 * poleR;
pair bluePt = midPt + (-1.5 * poleWidth, -1 * poleWidth);
draw(circle(bluePt, xsz), blue+linewidth(2.5));

// Clip to scene bounds
clip(box((clipLeft, clipBottom), (clipRight, clipTop)));