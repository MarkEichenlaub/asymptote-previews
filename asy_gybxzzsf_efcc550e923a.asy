size(6cm);
defaultpen(fontsize(10pt));

real circledist = 6;
draw(shift(-circledist, 0)*unitcircle);
draw("$v$", (-circledist + 1, 0)--(-circledist + 4, 0), dir(90), Arrow(TeXHead), Margins);

draw(unitcircle, dashed);
draw(shift(2*dir(45))*unitcircle);
draw(shift(2*dir(-45))*unitcircle);

real eps = 0.3, eps2 = 0.7;
draw((3+eps)*dir(45) -- 5*dir(45), Arrow(TeXHead));
draw((3+eps)*dir(45) -- ((3+eps)*dir(45) + sqrt(2)*dir(0)), dashed);
draw((3+eps)*dir(-45) -- 5*dir(-45), Arrow(TeXHead));
draw((3+eps)*dir(-45) -- ((3+eps)*dir(-45) + sqrt(2)*dir(0)), dashed);
draw("$45^\circ$", arc((3+eps)*dir(45), eps2, 0, 45), dir(22.5));
draw("$45^\circ$", arc((3+eps)*dir(-45), eps2, 0, -45), dir(-22.5));