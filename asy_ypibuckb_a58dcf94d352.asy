import graph;
import math;

size(8cm);

real pi = 4 * atan(1);
real eps = 0.1;
real xmax = 1 + eps, ymax = xmax;

picture[] picarray;
for(int i = 0; i < 1; ++i){
    picture p = new picture;
    size(p, 12cm);
    draw(p, (0, .5)--(xmax, .5), EndArrow(TeXHead));
    draw(p, (0, 0)--(0, ymax), EndArrow(TeXHead));
    label(p, "$t$", (xmax, .5), dir(0));
    label(p, "$v$", (0, ymax), dir(180));
    label(p, "$0$",(0,.5),dir(180));
    picarray.push(p);
}

draw(picarray[0], (0,.9)--(.2,.6){2,-3}..{1,0}(.4,.4){1,0}..(.6,.45)..(.8,.5)--(1,.5));
dot(picarray[0], (0,.9), red + linewidth(6pt));
dot(picarray[0], (.26,.5), red + linewidth(6pt));
dot(picarray[0], (.4,.4), red + linewidth(6pt));
dot(picarray[0], (.8,.5), red + linewidth(6pt));

label(picarray[0], "release", (0,.9),E);
label(picarray[0], "highest point", (.26,.5),N);
label(picarray[0], "fastest downward", (.4,.4),S);
label(picarray[0], "stop", (.8,.5),N);

label(picarray[0], "(E)", (eps, ymax));

for(int i = 0; i < 1; ++i)
     add(picarray[i].fit(), (i*1.2, 0));