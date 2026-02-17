//TeXeR source: https://artofproblemsolving.com/texer/uhvyaaay
unitsize(1.0 cm);

pair A, B, C, D;

A = (-4, 0);
B = (4, 0);
C = (0, 4.47);
D = (0, 0);

draw(A--B, linewidth(1.0bp));
draw(D--C, dotted + linewidth(1.0bp));

label("mirror", (0, 0), S);
label("normal", (0, 2.235), dir(0));