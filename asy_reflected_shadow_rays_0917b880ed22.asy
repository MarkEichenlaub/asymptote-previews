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

// Mirror: left side at x=-6, right side directly above pole center
pair mirrorLeft = (-6, 5);
pair mirrorRight = (poleX, 5);

// Light rays approach from below-right, traveling up-left toward mirror
real angle = 115;
pair d = dir(angle);

// Reflected direction (flip y-component for horizontal mirror)
pair dRef = (d.x, -d.y);

// Perpendicular to ray direction
pair perp = dir(angle + 90);

// --- Tangent ray computation ---
// Perpendicular offset spacing = 2*poleR / 6 = 0.4
real offsetSpacing = 2 * poleR / 6;

// Generate offsets covering the visible area
real[] offsets;
for (int i = -25; i <= 25; ++i) {
offsets.push(i * offsetSpacing);
}

// Helper: clamp a ray from P in direction v to stay inside clip box.
pair clipRayEnd(pair P, pair v) {
real tmax = 1e9;
if (v.x > 0) tmax = min(tmax, (clipRight - P.x) / v.x);
if (v.x < 0) tmax = min(tmax, (clipLeft  - P.x) / v.x);
if (v.y > 0) tmax = min(tmax, (clipTop   - P.y) / v.y);
if (v.y < 0) tmax = min(tmax, (clipBottom - P.y) / v.y);
return P + tmax * v;
}

// Helper: clamp ray start to clip box entry point
pair clipRayStart(pair P, pair v) {
real tmin = 0;
if (v.x > 0 && P.x < clipLeft)   tmin = max(tmin, (clipLeft   - P.x) / v.x);
if (v.x < 0 && P.x > clipRight)  tmin = max(tmin, (clipRight  - P.x) / v.x);
if (v.y > 0 && P.y < clipBottom) tmin = max(tmin, (clipBottom - P.y) / v.y);
if (v.y < 0 && P.y > clipTop)    tmin = max(tmin, (clipTop    - P.y) / v.y);
return P + tmin * v;
}

// Short overshoot distance for rays that miss the mirror
real overshoot = 1.5;

for (int i = 0; i < offsets.length; ++i) {
pair origin_on_line = offsets[i] * perp;

real t_start = (-7 - origin_on_line.y) / d.y;
pair start = origin_on_line + t_start * d;

// Clamp start to clip box entry
pair visStart = clipRayStart(start, d);

// Intersection with pole circle (incident ray)
real sx = start.x - poleX;
real sy = start.y - poleY;
real a = d.x*d.x + d.y*d.y;
real b = 2*(sx*d.x + sy*d.y);
real c = sx*sx + sy*sy - poleR*poleR;
real disc = b*b - 4*a*c;

// Tangent tolerance: if disc is very small, treat as tangent (not blocked)
bool hitsPoleSolid = (disc > 0.01);

if (hitsPoleSolid) {
real t1 = (-b - sqrt(disc)) / (2*a);
if (t1 > 0) {
pair hitPoint = start + t1*d;
draw(visStart--hitPoint, orange+linewidth(1.0), Arrow(size=5));
}
} else {
// Ray passes the pole (or is tangent) -- continue to mirror line y=5
real t_mirror = (5 - start.y) / d.y;
pair mirrorHit = start + t_mirror*d;

if (mirrorHit.x >= mirrorLeft.x && mirrorHit.x <= mirrorRight.x) {
// Ray hits the mirror
draw(visStart--mirrorHit, orange+linewidth(1.0), Arrow(size=5));

// Reflected ray from mirror
real rsx = mirrorHit.x - poleX;
real rsy = mirrorHit.y - poleY;
real ra = dRef.x*dRef.x + dRef.y*dRef.y;
real rb = 2*(rsx*dRef.x + rsy*dRef.y);
real rc = rsx*rsx + rsy*rsy - poleR*poleR;
real rdisc = rb*rb - 4*ra*rc;

// Also use tangent tolerance for reflected rays
bool refHitsPole = (rdisc > 0.01);

if (refHitsPole) {
real rt1 = (-rb - sqrt(rdisc)) / (2*ra);
if (rt1 > 0) {
pair rHitPoint = mirrorHit + rt1*dRef;
draw(mirrorHit--rHitPoint, orange+linewidth(1.0), Arrow(size=5));
} else {
pair endPt = clipRayEnd(mirrorHit, dRef);
draw(mirrorHit--endPt, orange+linewidth(1.0), Arrow(size=5));
}
} else {
pair endPt = clipRayEnd(mirrorHit, dRef);
draw(mirrorHit--endPt, orange+linewidth(1.0), Arrow(size=5));
}
} else {
// Ray misses mirror -- draw to mirror-height then a short overshoot
pair endPt = mirrorHit + overshoot * d;
draw(visStart--endPt, orange+linewidth(1.0), Arrow(size=5));
}
}
}

// Draw mirror on top of rays
draw(mirrorLeft--mirrorRight, linewidth(6)+black);
label("Mirror", 0.5*(mirrorLeft+mirrorRight) + (0, 0.7), N, fontsize(11));

// Draw pole (solid red circle) on top of everything
filldraw(circle((poleX, poleY), poleR), red, darkred+linewidth(1.5));
label("Pole", (poleX, poleY - poleR - 0.5), S, fontsize(11));

// Green X at midpoint between pole center and where center ray hits mirror
real t_center = (5 - poleY) / d.y;
pair centerMirrorHit = (poleX, poleY) + t_center * d;
pair midPt = 0.5 * (centerMirrorHit + (poleX, poleY)) + (-.4,.4);
real xsz = 0.35;
draw((midPt + (-xsz,-xsz))--(midPt + (xsz,xsz)), green+linewidth(2.5));
draw((midPt + (-xsz,xsz))--(midPt + (xsz,-xsz)), green+linewidth(2.5));

// Clip to scene bounds
clip(box((clipLeft, clipBottom), (clipRight, clipTop)));