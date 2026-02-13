size(4cm);

fill(box((-0.2, -0.3), (0, 1.3)), gray(0.8));
draw((0, -0.3)--(0, 1.3));
draw(unitsquare);

unfill(scale(0.03)*unitcircle); draw(scale(0.03)*unitcircle);
unfill(shift(1, 0)*scale(0.03)*unitcircle); draw(shift(1, 0)*scale(0.03)*unitcircle);
unfill(shift(1, 1)*scale(0.03)*unitcircle); draw(shift(1, 1)*scale(0.03)*unitcircle);
unfill(shift(0, 1)*scale(0.03)*unitcircle); draw(shift(0, 1)*scale(0.03)*unitcircle);

draw((1/2, 1)--(1, 1/2));