size(3.5cm);

real eps = 0.1, v2 = 1.2, v3 = 0.8;

draw((0, 0)--2*dir(0), Arrow(TeXHead), Margins);
draw((0, eps)--(-v2, eps), Arrow(TeXHead), Margins);
draw((0, -eps)--(-v3, -eps), Arrow(TeXHead), Margins);

label("$v_{\max}$", 2*dir(0), dir(-90));
label("$v_2$", (-v2, eps), dir(90));
label("$v_3$", (-v3, -eps), dir(-90));