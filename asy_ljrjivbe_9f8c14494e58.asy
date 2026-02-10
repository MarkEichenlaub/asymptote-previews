size(12cm);

real b = 1.95; //length of a side of a block
real n = 8; //number of blocks in the tower
real h = n*b; //height of tower
real fh = 17; //height of flashlight above floor
real fl = 5; //how far back from tower the flashlight is horizontally
real s = h*fl/(fh-h); //shadow length

pair Sh = (-s,0);
pair T = (0,h); //top left corner of tower, where the shadow ray passes by
pair F = (fl, fh); //part of flashlight the light comes out

draw((-30, 0)--(10,0)); // ground

//draw the tower
for(int i = 4; i<n; ++i){
pair bl = (0,i*b); //bottom left of block
draw(shift(bl)*box((0,0),(b,b)));
}

//dot(F);

//draw( F--Sh, orange);

label("Tower O",(0,h),NW);
label("$15.6 \;\mathrm{cm}$",(0,.875*h),NW);

//now repeat for tower Y
n = 4; //number of blocks in the tower
h = n*b; //height of tower
s = h*fl/(fh-h); //shadow length

Sh = (-s,0);
T = (0,h); //top left corner of tower, where the shadow ray passes by
F = (fl, fh); //part of flashlight the light comes out

for(int i = 0; i<n; ++i){
pair bl = (0,i*b); //bottom left of block
draw(shift(bl)*box((0,0),(b,b)),red);
}

//draw( F--Sh, Yellow);

label("Tower Y",(b,h*0.75),E,red);
label("$7.8 \;\mathrm{cm}$",(b,0.5*h),E,red);

draw((-26,0)--(0,0),linewidth(2pt));
label("Shadow O", (-20,0),S);
label("$26.0 \;\mathrm{cm}$", (-20,-h/4),S);



draw((-13,0)--(0,0),red+linewidth(2pt));
label("Shadow Y", (-6.5,0),S,red);
label("$13.0 \;\mathrm{cm}$", (-6.5,-h/4),S,red);