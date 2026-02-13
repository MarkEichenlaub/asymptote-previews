size(3cm);

pair O = (0, 0);
fill(O--dir(60)--dir(120)--cycle, rgb(0.85, 0.7, 1));
fill(O--dir(-60)--dir(-120)--cycle, rgb(0.85, 0.7, 1));

fill(O--dir(60)--dir(0)--dir(-60)--cycle, rgb(0.5, 0.8, 1));
fill(O--dir(120)--dir(180)--dir(-120)--cycle, rgb(0.5, 0.8, 1));

draw(polygon(6));
draw(-1.5*dir(0)--1.5*dir(0), Arrows(TeXHead));
draw(-dir(60)--dir(60));
draw(-dir(120)--dir(120));