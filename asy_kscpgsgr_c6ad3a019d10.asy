//TeXeR source: https://artofproblemsolving.com/texer/kscpgsgr

size(10cm);
defaultpen(fontsize(10pt));

pair A = (-2, -2), B = (1, -2), C = (0, 0);
real eps = 0.04;
path triangle = A--B--C--cycle;

real a_len = 2, b_len = 1.2, ds = 0.1;

real a_height = a_len*dir(A).y, b_height = b_len*dir(B).y;
draw(shift(0, a_height)*((A.x, 0)--(B.x, 0)), dotted+gray(0.7));
draw(shift(0, b_height)*((A.x, 0)--(B.x, 0)), dotted+gray(0.7));
draw((A.x, a_height) --(A.x, b_height));
label("$\Delta y$", (A.x - 0.5, (a_height + b_height)/2));

draw(shift(0, -eps)*triangle);
draw(C--(a_len)*dir(A), gray(0.9)+rgb(1, 0.2, 0.4)+linewidth(4pt));
draw("$l_\alpha$", C--(a_len - ds)*dir(A), linewidth(4pt));
draw((b_len + ds)*dir(B)--C, rgb(0, 0.4, 0)+linewidth(4pt));
draw("$l_\beta$", b_len*dir(B)--C, linewidth(4pt));

draw("$\mathrm ds$", shift(0.1*dir(degrees(B - C)+90))*((b_len+ds)*dir(B)--b_len*dir(B)), Bars(3));

draw("$\alpha$", arc(shift(0, -eps)*A, 0.3, degrees(B - A), degrees(C - A)));
draw("$\beta$", arc(shift(0, -eps)*B, 0.3, degrees(C - B), degrees(A - B)));