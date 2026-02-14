unitsize(1cm);

picture small_circ, big_missing, full_circ;

filldraw(small_circ, arc((0, 0), 1, 180, 180 + 360)--arc((-1/2, 0), 1/2, 180 + 360, 180)--cycle, gray(0.7));

filldraw(big_missing, shift(-1/2, 0)*scale(1/2)*unitcircle, gray(0.7));
draw(big_missing, unitcircle, linetype("4 4"));

filldraw(full_circ, unitcircle, gray(0.7));
draw(full_circ, shift(-1/2, 0)*scale(1/2)*unitcircle, linetype("3 3"));

real picsize = 0.6cm;
add(small_circ.scale(picsize, picsize), (-0.2, 0));
add(big_missing.scale(picsize, picsize), (1.5, 0));
add(full_circ.scale(picsize, picsize), (3.25, 0));
add("$I($", (-0.7, 0));
add("$)+I($", (0.65, 0));
add("$)=I($", (2.38, 0));
add("$).$", (3.73, 0));