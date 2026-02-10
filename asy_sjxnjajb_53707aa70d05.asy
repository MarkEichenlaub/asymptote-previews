import graph;

real x = 0;
real y = 0;

real ds = 3;

real dx = 0;
real dy = 0;

real theta = 0;
real dtheta = 0;

real g = 10;
real h = 200;
real a = g;

path coaster = (0,0);

real r(real y){
return 2*g*(h-y)/a;
}

for(int i = 0; i<500; ++i){
coaster = coaster..((x,y));
dtheta = ds * 1/r(y);
theta = theta + dtheta;
dx = cos(theta);
x = x + dx;
dy = sin(theta);
y = y + dy;
}

draw(shift(0,0)*scale(1/50)*coaster);
label("A",(1.5,0),S);

real x = 0;
real y = 0;

real ds = 3;

real dx = 0;
real dy = 0;

real theta = 0;
real dtheta = 0;

real g = 10;
real h = 200*sqrt(2);
real a = 2*g;

path coaster = (0,0);

real r(real y){
return 2*g*(h-y)/a;
}

for(int i = 0; i<500; ++i){
coaster = coaster..((x,y));
dtheta = ds * 1/r(y);
theta = theta + dtheta;
dx = cos(theta);
x = x + dx;
dy = sin(theta);
y = y + dy;
}

draw(shift(4.7,0)*scale(1/50*1.1)*coaster);
label("B",(4+1.5,0),S);

real x = 0;
real y = 0;

real ds = 3;

real dx = 0;
real dy = 0;

real theta = 0;
real dtheta = 0;

real g = 10;
real h = 200*sqrt(5);
real a = 5*g;

path coaster = (0,0);

real r(real y){
return 2*g*(h-y)/a;
}

for(int i = 0; i<370; ++i){
coaster = coaster..((x,y));
dtheta = ds * 1/r(y);
theta = theta + dtheta;
dx = cos(theta);
x = x + dx;
dy = sin(theta);
y = y + dy;
}

draw(shift(9,0)*scale(1/50*1.45)*coaster);
label("C",(8+1.5,0),S);