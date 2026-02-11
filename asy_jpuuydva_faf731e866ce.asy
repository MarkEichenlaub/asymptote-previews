//TeXeR source: https://artofproblemsolving.com/texer/jpuuydva

import three; import solids;
currentprojection = orthographic(2, 0.2, 1);
size(5cm);

material M = material(gray(0.7), black, gray(0.3));

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

draw((0, 2*sqrt(3)/3, -sqrt(6)/6)--(0, 0, sqrt(6)/2), gray(0.3));
draw((0, 2*sqrt(3)/3, -sqrt(6)/6)--(0, 0, -sqrt(6)/6), gray(0.3));
draw((0, 0, sqrt(6)/2)--(0, 0, -sqrt(6)/6), rgb(0, 0.6, 1));

dot((0, 2*sqrt(3)/3, -sqrt(6)/6));
dot((0, 0, sqrt(6)/2));
dot((0, 0, -sqrt(6)/6));