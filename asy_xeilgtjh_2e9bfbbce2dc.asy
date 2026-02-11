//TeXeR source: https://artofproblemsolving.com/texer/xeilgtjh

import three; import solids;
currentprojection = orthographic(2, 2, 10);
size(5cm);

material M = material(gray(0.7), black, gray(0.3));

draw(surface(sphere((-1, -sqrt(3)/3, -sqrt(6)/6), 1, 50)), M);
draw(surface(sphere((1, -sqrt(3)/3, -sqrt(6)/6), 1, 100)), M);
draw(surface(sphere((0, 2*sqrt(3)/3, -sqrt(6)/6), 1, 100)), M);
draw(surface(sphere((0, 0, sqrt(6)/2), 1, 200)), M);

draw(shift(1, -sqrt(3)/3, -sqrt(6)/6)*(1.5*dir(90, -30)--3*dir(90, -30)), Arrow3(TeXHead3));