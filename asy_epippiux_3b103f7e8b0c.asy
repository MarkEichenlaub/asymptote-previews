size(3.5cm);

real eps = 0.1, v1 = 1, v2 = 1;

draw((0, 0)--2*dir(0), Arrow(TeXHead), Margins);
draw((0, eps)--(-v1, eps), Arrow(TeXHead), Margins);
draw((0, -eps)--(-v2, -eps), Arrow(TeXHead), Margins);

label("$v_{1}$", 2*dir(0), dir(-90));
label("$v_2, v_3$", (-v1, eps), dir(90));