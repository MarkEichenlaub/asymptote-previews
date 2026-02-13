import three;
import solids;

triple eye = (0, 6, 3);
currentprojection = orthographic(eye);

material M = material(gray(0.8), black, gray(0.5));

real dist = 5;
real axle_r = 0.5, axle_h = 6;
real eps = 0.04;

real r1 = 3, h1 = 1;
draw(surface(cylinder((-dist, 0, 0), axle_r, -axle_h + h1, Z)), M);
draw(surface(cylinder((-dist, 0, 0), r1, h1, Z)), M);
draw(surface(circle((-dist, 0, h1), r1, Z)), white);
draw(circle((-dist, 0, h1), r1, Z));
draw(arc((-dist, 0, 0), r1, 90, 0, 90, 179));
draw((-dist + r1, 0, 0)--(-dist + r1, 0, h1));
draw((-dist - r1, 0, 0)--(-dist - r1, 0, h1));
draw(surface(cylinder((-dist, 0, h1), axle_r, axle_h - h1, Z)), M);
draw(surface(circle((-dist, 0, axle_h), axle_r, Z)), white);

real r2 = 4, h2 = 1;
draw(surface(cylinder((dist, 0, 0), axle_r, -axle_h + h2, Z)), M);
draw(surface(cylinder((dist, 0, 0), r2, h2, Z)), M);
draw(surface(circle((dist, 0, h2), r2, Z)), white);
draw(circle((dist, 0, h2), r2, Z));
draw(arc((dist, 0, 0), r2, 90, 0, 90, 179));
draw((dist + r2, 0, 0)--(dist + r2, 0, h2));
draw((dist - r2, 0, 0)--(dist - r2, 0, h2));
draw(surface(cylinder((dist, 0, h2), axle_r, axle_h - h2, Z)), M);
draw(surface(circle((dist, 0, axle_h), axle_r, Z)), white);

real arrow_r = 3*axle_r;
draw(arc((-dist, 0, axle_h), arrow_r, 90, 0, 90, 180), Arrow3(TeXHead2(normal=Z)));
draw(arc((dist, 0, axle_h), arrow_r, 90, 0, 90, 180), Arrow3(TeXHead2(normal=Z)));