import markers;
import geometry;
import math;
size(7cm);
defaultpen(fontsize(10pt));

draw((-1, 0)--(0, 0), gray(0.6), Arrow(TeXHead), Margin(1, 20));

real angle = -2*aTan(1/5);
draw((0, 0)--0.5*dir(angle), dotted);
draw((0, 0)--0.25*dir(angle + 90), dotted);

draw(0.5*dir(angle)--0.75*dir(angle), Arrow(TeXHead));
draw(0.25*dir(angle + 90)--3/8*dir(angle + 90), Arrow(TeXHead));

dot("$0.650\;\mathrm{kg}$", (-1, 0), dir(-90), gray(0.6));
dot("$0.750\;\mathrm{kg}$", (0, 0), dir(-135), gray(0.6));
dot(0.5*dir(angle));
dot(0.25*dir(angle + 90));