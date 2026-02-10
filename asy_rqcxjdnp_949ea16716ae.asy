size(12cm);

real b = 1.95; //length of a side of a block
real n = 8; //number of blocks in the tower
real h = n*b; //height of tower
real fh = 183; //height of flashlight above floor
real fl = 292; //how far back from tower the flashlight is horizontally
real s = h*fl/(fh-h); //shadow length

pair Sh = (-s,0);
pair T = (0,h); //top left corner of tower, where the shadow ray passes by
pair F = (fl, fh); //part of flashlight the light comes out

draw((-30, 0)--(5,0), linewidth(2pt)); // ground

//draw the tower
for(int i = 0; i<n; ++i){
pair bl = (0,i*b); //bottom left of block
draw(shift(bl)*box((0,0),(b,b)), black);
}



//shadow rays

pen[] colors = {red,olive,deepgreen,blue};

for(int i = 1; i<5; ++i){
real th = i*pi/12;
real x = h*tan(th);
real thd = th*180/pi;
draw((-x,0)--(0,h)--(5,h + 5*h/x), colors[i-1] );
}

clip(box((-30,0),(5,20)));