size(7cm);

int xmax = 9, ymax = 5;
draw((0, 0)--(xmax, 0), linewidth(1), EndArrow(TeXHead));
draw((0, 0)--(0, ymax), linewidth(1), EndArrow(TeXHead));

for(int x = 0; x < xmax; ++x)
    draw((x, 0)--(x, ymax), dotted);
for(int y = 0; y < ymax; ++y)
    draw((0, y)--(xmax, y), dotted);

draw((0, 4)--(2, 0)--(9., 4+2/3), linewidth(1));

label("$t$", (xmax, 0), dir(0));
label("$v$", (0, ymax), dir(180));