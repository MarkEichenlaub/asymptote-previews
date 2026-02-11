import three;
import solids;

triple eye = (0, 6, 3);
currentprojection = orthographic(eye);

material M = material(gray(0.8), black, gray(0.5));

real eps = 0.04;

real r = 3, h = 0.4;
draw(surface(cylinder((0, 0, 0), r, h, Z)), M);
draw(surface(circle((0, 0, h), r, Z)), white);
draw(circle((0, 0, h), r, Z));
draw(arc((0, 0, 0), r, 90, 0, 90, 180 - eps));
draw((r, 0, 0)--(r, 0, h));
draw((-r, 0, 0)--(-r, 0, h));

real string_len = 3;
draw((0, 0, h)--(0, 0, h + string_len));
dot((0, 0, h + string_len));

real theta1 = 56, theta2 = 130;
draw("$\theta$", arc((0, 0, h), r/8, 90, theta1, 90, theta2), red);
draw((0, 0, h)--(r*Cos(theta1), r*Sin(theta1), h), red);
draw((0, 0, h)--(r*Cos(theta2), r*Sin(theta2), h), red+dashed);