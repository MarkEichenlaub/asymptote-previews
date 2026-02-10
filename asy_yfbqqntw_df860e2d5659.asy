unitsize(4cm);

real r2 = 1.2;

filldraw((-.5,-1)--(0,-1)--arc((0,0),1,-90,90)--(0,1)--(-.5,1)--(-.5,r2)--(0,r2)--arc((0,0),r2,90,-90)--(0,-r2)--(-.5,-r2)--cycle, lightgray);

int points = 5;

dot((0,0));
draw((0,1)--(0,-1), dotted);

real theta = 0;
real s = 0;
real s_max = 1;
real s_min = .2;

real a_t = (s_max - s_min)/1;
real a_c = 0;

for(int i = 0; i<points; ++i){
theta = -90+i*180/(points-1);
pair r = dir(theta)*(1+r2)/2;

real t = sqrt((theta+90)/180);
s = s_min + t*(s_max - s_min);

a_c = s^2/((1+r2)/2);
dot(r);

draw(shift(r)*rotate(180)*scale(a_c)*((0,0)--r) , red+dotted+linewidth(2pt));
}