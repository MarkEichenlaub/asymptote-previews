//TeXeR source: https://artofproblemsolving.com/texer/helfommu

size(5cm);
defaultpen(fontsize(10pt));

pair A = (-2, -2), B = (1, -2), C = (0, 0);
real eps = 0.04;
path triangle = A--B--C--cycle;

real a_len = length(A - C), b_len = a_len*length(B - C)/length(A - C), f_scale = 0.4;

draw(shift(0, -eps)*triangle);
draw(C--a_len*dir(A), linewidth(4pt));
draw(b_len*dir(B)--C, linewidth(4pt));

real cat(real t){ return cosh(t)/2; }
draw(shift(0, -cat(length(A-B)/2))*shift((A+B)/2)*graph(cat, -length(A-B)/2, length(A-B)/2), linewidth(4pt));