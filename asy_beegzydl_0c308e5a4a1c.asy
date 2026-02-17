size(12cm);

real b = 1.95; //length of a side of a block
real n = 8; //number of blocks in the tower
real h = n*b; //height of tower
real fh = 60; //height of flashlight above floor
real fl = 90; //how far back from tower the flashlight is horizontally
real s = h*fl/(fh-h); //shadow length

pair Sh = (-s,0);
pair T = (0,h); //top left corner of tower, where the shadow ray passes by
pair F = (fl, fh); //part of flashlight the light comes out

draw((-50, 0)--(fl + 20,0)); // ground

//draw the tower
for(int i = 0; i<n; ++i){
pair bl = (0,i*b); //bottom left of block
draw(shift(bl)*box((0,0),(b,b)), black);
}

dot(F);

draw( F--Sh, black);


//now repeat for tower Y
n = 4; //number of blocks in the tower
h = n*b; //height of tower
real x = fl*(fh-h)/(fh-2*h) - fl;
s = h*(fl+x)/(fh-h); //shadow length



Sh = (-s-x,0);
T = (-x,h); //top left corner of tower, where the shadow ray passes by
F = (fl, fh); //part of flashlight the light comes out

for(int i = 0; i<n; ++i){
pair bl = (-x,i*b); //bottom left of block
draw(shift(bl)*box((0,0),(b,b)),red);
}

draw( F--Sh, red);