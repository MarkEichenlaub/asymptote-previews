//TeXeR source: https://artofproblemsolving.com/texer/djrnclwf

size(10cm);
defaultpen(fontsize(10pt));

pair A = (-2, -2), B = (1, -2), C = (0, 0);
real eps = 0.04;
path triangle = A--B--C--cycle;

real a_len = 2, b_len = a_len*length(B - C)/length(A - C), f_scale = 0.4;
pair D = (0, -a_len/sqrt(2));
draw(C--D, dashed); 
label("$l_\alpha \sin \alpha$", (C+(1.5)*D)/2, W, red);
label("$l_\beta \sin \beta$", (C+(1.5)*D)/2, E, blue);

draw(shift(0, -eps)*triangle);
draw("$l_\alpha$", C--a_len*dir(A), linewidth(4pt)+red);
draw("$l_\beta$", b_len*dir(B)--C, linewidth(4pt)+blue);
draw(Line(a_len*dir(A), b_len*dir(B), 0.2, 0.2), dotted);
draw("$\alpha$", arc(a_len*dir(A), 0.3, degrees(B - A), degrees(C - A)));
draw("$\beta$", arc(b_len*dir(B), 0.3, degrees(C - B), degrees(A - B)));

draw("$\alpha$", arc(shift(0, -eps)*A, 0.3, degrees(B - A), degrees(C - A)));
draw("$\beta$", arc(shift(0, -eps)*B, 0.3, degrees(C - B), degrees(A - B)));