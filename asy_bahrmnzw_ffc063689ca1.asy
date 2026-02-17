unitsize(1.3cm);

picture left, right;

draw(left, unitsquare);
filldraw(left, shift(1, 0)*scale(0.05)*unitcircle, white);
dot(left, (1/4, 3/4));

draw(right, rotate(45)*unitsquare);
draw(right, (0, 0)--(0, sqrt(2)), dashed);
dot(right, (0, 3*sqrt(2)/4));
filldraw(right, scale(0.05)*unitcircle, white);

add(left.scale(1.7cm, 1.7cm));
add(right.scale(2.3cm, 2.3cm), (3, 0));