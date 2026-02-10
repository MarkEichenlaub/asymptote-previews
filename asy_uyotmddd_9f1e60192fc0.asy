size(4cm);

fill(arc((0, 0), 1, 0, 86)--arc((0, 0), 1, 94, 180)--cycle, 0.1*rgb(0, 0.6, 1) + 0.9*white);

draw(arc((0, 0), 1, 0, 86));
draw(arc((0, 0), 1, 94, 180));
draw((-1.1, 0)--(1.1, 0));

int n = 10;
for(real i = 0.5; i < n; ++i) draw(dir(180/n*i)--1.2*dir(180/n*i), Arrow(TeXHead), BeginMargin);