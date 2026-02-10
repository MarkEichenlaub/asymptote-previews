size(4cm);
DefaultHead = TeXHead;

draw(unitcircle);

real P0 = 0.3;

int n = 14;
for(real k = 0; k < n; ++k){
	pair direction = dir(360*k/n);
	real len = P0 - 0.1*direction.y;
	draw(rotate(degrees(direction))*((1.05 + len, 0)--(1.05, 0)), Arrow());
    label("$P$",rotate(degrees(direction))*(1.2+len,0));
}

draw("$F_B$",(0, 0)--(0, 0.7), Arrow());