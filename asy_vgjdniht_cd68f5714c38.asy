//TeXeR source: https://artofproblemsolving.com/texer/vgjdniht

import three; import solids;
currentprojection = orthographic(2, 0.2, 1);
size(5cm);
defaultpen(fontsize(10pt));

material M = material(gray(0.7), black, gray(0.35));

void drawSphere(triple C = (0, 0, 0), real r, pen p = currentpen){
     triple camv = currentprojection.normal;
     draw(circle(C, r, camv), p);
     draw(arc(C, r, 90, aTan(camv.y / camv.x) - 90, 90, aTan(camv.y / camv.x) + 90, Z), p);
     draw(arc(C, r, 90, aTan(camv.y / camv.x) - 90, 90, aTan(camv.y / camv.x) + 90, -Z), p + linetype("4 4"));
}

drawSphere((-1, -sqrt(3)/3, -sqrt(6)/6), 1, gray(0.7));
draw(surface(sphere((0, 2*sqrt(3)/3, -sqrt(6)/6), 1, 100)), M);
drawSphere((0, 2*sqrt(3)/3, -sqrt(6)/6), 1, gray(0.7));
draw(surface(sphere((0, 0, sqrt(6)/2), 1, 200)), M);
drawSphere((0, 0, sqrt(6)/2), 1, gray(0.7));
drawSphere((1, -sqrt(3)/3, -sqrt(6)/6), 1, gray(0.7));

draw(Label("$2R$", Relative(0.4), rgb(0, 0.4, 0.8)), (0, 2*sqrt(3)/3, -sqrt(6)/6)--(0, 0, sqrt(6)/2), gray(0.3));
draw(Label("$2R/\sqrt{3}$", Relative(0.6), rgb(0, 0.3, 0.7), Fill(1, 0.1, gray(0.65))), (0, 0, -sqrt(6)/6)--(0, 2*sqrt(3)/3, -sqrt(6)/6), gray(0.3));
draw(Label("$2R\sqrt{2}/\sqrt{3}$", Relative(0.8), rgb(0, 0.3, 0.7)), (0, 0, sqrt(6)/2)--(0, 0, -sqrt(6)/6), gray(0.3));

draw("$N$", shift(0.12*(0, sqrt(3)/3, sqrt(6)/6))*((0, sqrt(3)/3, sqrt(6)/6)--(0, 0, sqrt(6)/2)), rgb(0.4, 0.1, 0.65), Arrow3(TeXHead3), Margin3);

dot((0, 2*sqrt(3)/3, -sqrt(6)/6));
dot((0, 0, sqrt(6)/2));
dot((0, 0, -sqrt(6)/6));