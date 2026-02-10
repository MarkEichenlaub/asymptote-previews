size(12cm);

//free variables
real b = 1.95; //length of a side of a block
real n = 4; //number of blocks in the tower
real s = 13; //shadow length
real fh = 183; //height of flashlight above floor
real dtheta = 0.01; //spacing between light rays

//defined variables
real h = n*b; //height of tower
real fl = (fh - h)*(s/h); //how far back from tower the flashlight is horizontally
pair T = (0,h); //top left corner of tower, where the shadow ray passes by
pair F = (fl, fh); //part of flashlight the light comes out
real theta = pi+atan((fh-h)/fl); //angle for the shadow ray from flashlight


//draw the tower
for(int i = 0; i<n; ++i){
pair bl = (0,i*b); //bottom left of block
draw(shift(bl)*box((0,0),(b,b)));
}

draw((-50, 0)--(fl + 20,0)); // ground
dot(F); //flashlight

label("floor",(-25 + 10 + fl/2,0),S);
label("Tower Y",(0,0),S);
label("flashlight",F, N);


//draw rays
for(int i = -4; i<5; ++i){
real th = theta + i*dtheta;
real thd = th*180/pi;

real y(real x){
return fh  + (x-fl)*tan(th);
}

real l; //length of light ray

if(y(b)<=0 || y(0)>=h){ //ray hits ground to the right of the tower or left of tower
l = fh/sin(th - pi);
}
else if(y(b) < h){ //ray hits right hand side of tower
l = (fl-b)/cos(th-pi);
}
else{ //ray hits top of tower
l = (fh-b)/sin(th-pi);
}

draw(shift(F)*((0,0)--(l*dir(thd))));
}