size(12cm);

real b = 1.95; //length of a side of a block
real n = 8; //number of blocks in the tower
real h = n*b; //height of tower
real fh = 183; //height of flashlight above floor
real fl = 292; //how far back from tower the flashlight is horizontally
real s = h*fl/(fh-h); //shadow length

pair S = (-s,0);
pair T = (0,h); //top left corner of tower, where the shadow ray passes by
pair F = (fl, fh); //part of flashlight the light comes out

//draw the tower
for(int i = 0; i<n; ++i){
pair bl = (0,i*b); //bottom left of block
draw(shift(bl)*box((0,0),(b,b)));
}

draw((-50, 0)--(fl + 20,0)); // ground

label("Tower O", (0,-6));

dot(F);

draw( F--S);
label("shadow ray",(F+S)/2,NW);