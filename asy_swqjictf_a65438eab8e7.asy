import three;
import solids;
unitsize(1cm);
defaultpen(fontsize(9pt));

picture three_d;
triple eye = (0, 6, 2.5);
currentprojection = orthographic(eye);

material M = material(gray(0.8), black, gray(0.5));

real dist = 5, eps = 0.05;

real r1 = 3, h1 = 1;
real dash_h = 3;
draw(three_d, (0, 0, 0)--(0, 0, -dash_h), dashed);
draw(three_d, surface(revolution((r1, 0, 0), (r1, 0, 0)--(r1, 0, h1), 180, 359)), M);
draw(three_d, surface(revolution((r1/2, 0, 0), (r1, 0, 0)--(r1, 0, h1), 180, 360)), M);
draw(three_d, arc((r1/2, 0, 0), r1/2, 90, 180, 90, 359));
draw(three_d, surface(revolution((0, 0, 0), (r1, 0, 0)--(r1, 0, h1), 0, 179)), M);
draw(three_d, surface(circle((0, 0, h1), r1, Z)--reverse(circle((r1/2, 0, h1), r1/2, Z))--cycle), gray(0.7), nolight);
draw(three_d, arc((0, 0, 0), r1, 90, 0, 90, 179));
draw(three_d, circle((0, 0, h1), r1, Z));
draw(three_d, circle((r1/2, 0, h1), r1/2, Z));
draw(three_d, (r1, 0, 0)--(r1, 0, h1) ^^ (-r1, 0, 0)--(-r1, 0, h1));
draw(three_d, (0, 0, h1)--(0, 0, dash_h + h1), dashed);

draw(three_d, arc((0, 0, dash_h + h1), r1/3, 90, 0, 90, 180), Arrow3(TeXHead2(normal=Z)));
add(three_d.scale(2.5cm, 2.5cm));

picture top1, top2;

filldraw(top1, unitcircle, gray(0.7));
draw(top1, "$R$", (0, 0)--dir(-60), Arrow(TeXHead));

filldraw(top2, unitcircle--reverse(shift(1/2, 0)*scale(1/2)*unitcircle)--cycle, gray(0.7));
top2 = xscale(-1)*top2;
draw(top2, "$R$", (0, 0)--dir(-60), Arrow(TeXHead));
draw(top2, "$R/2$", (-1/2, 0)--(-1, 0), dir(60), Arrow(TeXHead));

add(top1.scale(2.5cm, 2.5cm), (-6, 0));
add(top2.scale(2.5cm, 2.5cm), (-3, 0));