size(3cm);

real eps = 1.2;
draw(arc((0, 0), 1, -90 + eps, 90 - eps)--cycle);
draw(arc((0, 0), 1, 90 + eps, 270 - eps)--cycle);

int n = 14;
for(int i = 0; i < n; ++i)
	draw(1.4*dir(360/n*i)--1.1*dir(360/n*i), Arrow(TeXHead));