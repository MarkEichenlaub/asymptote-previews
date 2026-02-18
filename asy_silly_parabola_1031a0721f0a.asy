import graph;

// Origin at (0,0) center of the parabola vertex; size gives ~200pt output
size(200);

// === Parameters ===
real xMin = -2.5;          // viewing window
real xMax = 2.5;
real yMin = -1;
real yMax = 5;

real tangentX = 1;         // x-coordinate of tangent point
real tangentLen = 1.5;     // half-length of tangent segment in x

pen curvePen = blue + linewidth(1pt);
pen tangentPen = red + linewidth(1pt);
pen dotPen = black + linewidth(4pt);

bool showLabels = true;    // toggle curve/tangent labels
bool showTangentPoint = true;

// === Define objects ===

// Parabola: y = x^2
real parabola(real x) { return x^2; }

// Tangent at x = tangentX: slope = 2*tangentX, point = (tangentX, tangentX^2)
real slope = 2 * tangentX;
pair tangentPt = (tangentX, parabola(tangentX));

// Tangent line: y - tangentPt.y = slope * (x - tangentPt.x)
real tangentLine(real x) { return slope * (x - tangentPt.x) + tangentPt.y; }

// Tangent segment endpoints
real tXmin = tangentX - tangentLen;
real tXmax = tangentX + tangentLen;

// === Draw ===

// Axes
xaxis("$x$", xMin, xMax, Ticks(Step=1, Size=2pt, NoZero), Arrow);
yaxis("$y$", yMin, yMax, Ticks(Step=1, Size=2pt, NoZero), Arrow);

// Parabola
draw(graph(parabola, xMin, xMax, n=100), curvePen);

// Tangent line segment
draw(graph(tangentLine, tXmin, tXmax), tangentPen);

// Tangent point dot
if (showTangentPoint) {
    dot(tangentPt, dotPen);
}

// === Labels ===
if (showLabels) {
    label("$y = x^2$", (xMax - 0.3, parabola(xMax - 0.3)), E, blue);
    label("tangent", (tXmax, tangentLine(tXmax)), E, red);
    label("$(1,1)$", tangentPt, W);
}