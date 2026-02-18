size(350,280);

// Settings
real poleX = 0;
real poleY = 0;
real poleR = 1.2;

// Mirror at the TOP: right edge directly above pole center
pair mirrorLeft = (-6, 5);
pair mirrorRight = (0, 5);

// Light rays approach from below-right, traveling up-left toward mirror
real angle = 115;
pair d = dir(angle);

// Tangent offsets are at +/-poleR = +/-1.2
// Horizontal separation between tangent lines ~ 2.648
// spacing = h_sep / 6 => offset spacing = 0.4
// Tangent offsets +/-1.2 = +/-3 * 0.4, so they are included.

pair perp = dir(angle + 90);
real offsetStep = 0.4;

real[] offsets;
for (int i = -21; i <= 22; ++i) {
offsets.push(i * offsetStep);
}

for (int i = 0; i < offsets.length; ++i) {
pair origin_on_line = offsets[i] * perp;

real t_start = (-6.5 - origin_on_line.y) / d.y;
pair start = origin_on_line + t_start * d;

// Intersection with pole circle
real sx = start.x - poleX;
real sy = start.y - poleY;
real a = d.x*d.x + d.y*d.y;
real b = 2*(sx*d.x + sy*d.y);
real c = sx*sx + sy*sy - poleR*poleR;
real disc = b*b - 4*a*c;

if (disc > 0) {
// Ray hits the pole
real t1 = (-b - sqrt(disc)) / (2*a);
if (t1 > 0) {
pair hitPoint = start + t1*d;
draw(start--hitPoint, orange+linewidth(1.0));
}
} else {
// Ray misses the pole — check if it hits the mirror
real t_mirror = (5 - start.y) / d.y;
pair mirrorHit = start + t_mirror*d;

if (mirrorHit.x >= -6 && mirrorHit.x <= 0) {
// Hits the mirror
draw(start--mirrorHit, orange+linewidth(1.0), Arrow(size=5));
} else if (mirrorHit.x > 0) {
// Misses mirror to the right: continue a short distance past mirror line
real overshoot = 1.5;
real t_end = t_mirror + overshoot;
pair endPt = start + t_end*d;
draw(start--endPt, orange+linewidth(1.0), Arrow(size=5));
} else {
// Misses mirror to the left (off-screen): draw to mirror y anyway
draw(start--mirrorHit, orange+linewidth(1.0), Arrow(size=5));
}
}
}

// Draw mirror on top of rays
draw(mirrorLeft--mirrorRight, linewidth(6)+black);
label("Mirror", (-3, 5.7), N, fontsize(11));

// Draw pole (solid red circle) on top of everything
filldraw(circle((poleX, poleY), poleR), red, darkred+linewidth(1.5));
label("Pole", (poleX, poleY - poleR - 0.5), S, fontsize(11));

// Clip to scene bounds (same area of view)
clip(box((-7, -6.5), (7, 7.5)));