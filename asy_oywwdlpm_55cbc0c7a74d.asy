import three;
currentprojection = orthographic(-2, -5, 1.5);

real theta = 20, width = 1, length = 1;
draw((0, 0, 0)--(0, width, 0)--(length, width, length*Tan(theta))--(length, 0, length*Tan(theta))--cycle);
draw((0, 0, 0)--(length, 0, 0)--(length, 0, length*Tan(theta)));

transform3 cube_positioning = rotate(-theta, Y)*shift(0.4, 0.4, 0)*scale3(0.2);
draw(cube_positioning*unitcube, material(gray(0.5), black, gray(0.2)));
draw(cube_positioning*((1/2, 0, 1/2)--(1/2, -2, 1/2)), Arrow3(TeXHead3));