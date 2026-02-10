//TeXeR source: https://artofproblemsolving.com/texer/heplgbzs

size(5cm);
defaultpen(fontsize(10pt));

pair A = (-2, -2), B = (1, -2), C = (0, 0);
real eps = 0.04;
path triangle = A--B--C--cycle;

draw(shift(0, -eps)*triangle);
draw(2*dir(A)--C--1.3*dir(B), linewidth(4pt));
draw("$\alpha$", arc(shift(0, -eps)*A, 0.3, degrees(B - A), degrees(C - A)));
draw("$\beta$", arc(shift(0, -eps)*B, 0.3, degrees(C - B), degrees(A - B)));