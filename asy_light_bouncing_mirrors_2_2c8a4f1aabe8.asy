import olympiad;

unitsize(3cm);

// === Parameters ===
real theta = 55;                    // mirror angle from horizontal
real normalLength = 1;              // length of normal lines
real mirrorHalf = 1;                // half-length of mirror
real normalSpacing = 0.25;          // spacing between normals
real bottomOffset = 0.125;          // gap between mirror and bottom normals
int normalCount = 7;                // number of normals on each side
real firstNormal = -0.75;           // x-position of first normal along mirror

// === Toggle switches ===
bool showRightAngles = true;        // red right-angle markers at normals

// === Pens ===
pen mirrorPen = linewidth(2pt);
pen normalPen = dotted;
pen anglePen = red;

// === Derived values ===
markscalefactor = 0.025;            // size of right-angle markers
real[] offsets;                      // x-offsets for normals along the mirror
for (int i = 0; i < normalCount; ++i) {
    offsets.push(firstNormal + i * normalSpacing);
}

// === Draw mirror ===
draw(rotate(theta)*((-mirrorHalf,0)--(mirrorHalf,0)), mirrorPen);
label("mirror", rotate(theta)*(mirrorHalf,0), SE);

// === Draw top normals + right angle markers ===
for (int i = 0; i < offsets.length; ++i) {
    real x = offsets[i];
    // normal line from mirror surface upward
    draw(rotate(theta)*shift((x,0))*((0,0)--(0,normalLength)), normalPen);

    if (showRightAngles) {
        // three points: along mirror, vertex on mirror, tip of normal
        pair A = rotate(theta)*(x+0.1, 0);   // point along mirror
        pair B = rotate(theta)*(x, 0);        // vertex (intersection)
        pair C = rotate(theta)*(x, 1);        // point along normal
        draw(rightanglemark(A, B, C), anglePen);
    }
}

// === Draw bottom normals + right angle markers ===
real thetaBottom = theta + 180;
pair d = dir(thetaBottom) * bottomOffset;  // offset to separate from mirror

for (int i = 0; i < offsets.length; ++i) {
    real x = offsets[i];
    // normal line from below mirror surface downward
    draw(shift(d)*rotate(thetaBottom)*shift((x,0))*((0,0)--(0,normalLength)), normalPen);

    if (showRightAngles) {
        // three points for bottom right-angle marker
        pair A = shift(d)*rotate(thetaBottom)*(x+0.1, 0);  // along mirror direction
        pair B = shift(d)*rotate(thetaBottom)*(x, 0);       // vertex
        pair C = shift(d)*rotate(thetaBottom)*(x, 1);       // along normal
        draw(rightanglemark(A, B, C), anglePen);
    }
}