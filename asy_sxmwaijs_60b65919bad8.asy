//TeXeR source: https://artofproblemsolving.com/texer/sxmwaijs

import trembling;
size(6cm);

real eps = 0.03,
rope_len = 0.15;

tremble tr = tremble(angle=14, frequency=1);

draw(box((0.4, 0), (1, eps)));

real rock_size = 0.08;
draw((0, eps/2)--rope_len*dir(-90));
filldraw(shift(0, -rope_len - rock_size)*scale(rock_size)*tr.deform(unitcircle), gray(0.7));

draw((0, eps/2)--(0.4, eps/2), dashed);

draw(shift(0.6, 0)*((0, 0)--(0, eps)));
draw(shift(0.8, 0)*((0, 0)--(0, eps)));
dot((0.2, eps/2));