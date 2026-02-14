size(12cm);

path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 

real R_s = 1;
real R_e = 0.5;
real R_m = 0.2;

real x_s = 10;
real x_m = 2;

//Earth
//filldraw(scale(R_e)*unitcircle,blue);
//draw(shift((R_e,0))*rotate(-90)*scale(.2)*person);

//Moon
//filldraw(shift((x_m,0))*scale(R_m)*unitcircle, gray);

//Sun
filldraw(shift((x_s,0))*scale(R_s)*unitcircle, white);

label("Sun", (x_s,-R_s),S);
//label("Moon", (x_m,-R_m),S);
//label("Earth", (0,-R_e),S);

pair P = (R_e,0);
pair ST = (x_s,R_s);
pair SB = (x_s,-R_s);

int n = 3;
int m = 6;

pair S1 = (x_s,.8*R_s);
pair S2 = (x_s,-.8*R_s);

dot(S1, blue);
dot(S2, red);

for(int j = -m; j<m+1; ++j){
real theta = 180 + 30*j;
draw(shift(S1)*((0,0)--4*dir(theta)), blue);
}


for(int j = -m; j<m+1; ++j){
real theta = 180 + 30*j+15;
draw(shift(S2)*((0,0)--4*dir(theta)), red);
}

//for(int i = -n; i<n+1; ++i){
//pair S = (x_s,R_s*i/n);
//}