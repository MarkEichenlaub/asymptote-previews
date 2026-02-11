draw((-1,0)--(8,0));

for (int i = 0; i<3; ++i){
	draw((0,i)--(1,i)--(1,i+1)--(0,i+1)--cycle);
}

real x = 4;

for (int i = 0; i<5; ++i){
	draw((x,i)--(x+1,i)--(x+1,i+1)--(x,i+1)--cycle);
}


real shadow_ratio = 2;

real theta = atan(shadow_ratio)*180/pi;

draw((1 + 3/shadow_ratio,0)--(1+3/shadow_ratio - 7/shadow_ratio,7), red);
draw((5 + 5/shadow_ratio,0)--(5+5/shadow_ratio - 7/shadow_ratio,7), red);

label("$a$",shift(-.55,.3)*(1 + 3/shadow_ratio,0),NW);
label("$b$",shift(-.55,.3)*(5 + 5/shadow_ratio,0),NW);

markscalefactor = 0.1;
draw(anglemark((1,3),(1 + 3/shadow_ratio,0),(1,0)));
draw(anglemark((5,5),(5 + 5/shadow_ratio,0),(5,0)));