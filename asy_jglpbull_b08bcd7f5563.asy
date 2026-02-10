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
draw((-50, 0)--(fl + 20,0), linewidth(2pt)); // ground
dot(F); //flashlight
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

// Add ruler
real numcm = 30; // 30 cm ruler
real xbuf = 0.2;
real rulerheight = 1;
real cml3 = 0.2, cml2 = 0.15, cml1 = 0.1;
real cmticklen = 0.1; // 1 mm = 0.1 cm in asymptote units

// Draw ruler body (straight edges, top at y=0, 0 cm at right)
filldraw((xbuf, 0)--(xbuf, -rulerheight)--(-numcm-xbuf, -rulerheight)--(-numcm-xbuf, 0)--cycle, paleyellow);

// Draw tick marks and labels
int numcmticks = 30 * 10; // 300 mm marks
for (int i = 0; i <= numcmticks; ++i) {
  real xpos = -cmticklen * i; // Position flipped: 0 at x=0, 30 at x=-30
  
  // Top ticks (going down from y=0)
  if (i % 10 == 0) {
    draw((xpos, 0)--(xpos, -cml3));
  } else if (i % 5 == 0) {
    draw((xpos, 0)--(xpos, -cml2));
  } else {
    draw((xpos, 0)--(xpos, -cml1));
  }
  
  // Labels (every cm)
  if (i % 10 == 0) {
    if (i == 0) {
      label("0", (xpos, -0.5),fontsize(6pt));
    } else {
      label(string(i / 10), (xpos, -0.5),fontsize(14pt));
    }
  }
  
  // Bottom ticks (going up from y=-rulerheight)
  if (i % 10 == 0) {
    draw((xpos, -rulerheight)--(xpos, -rulerheight + cml3));
  } else if (i % 5 == 0) {
    draw((xpos, -rulerheight)--(xpos, -rulerheight + cml2));
  } else {
    draw((xpos, -rulerheight)--(xpos, -rulerheight + cml1));
  }
}

// Clip to focus on tower area
clip(box((-20,-3),(4,10)));

draw((-13,0)--(0,0), red+linewidth(2pt));
label("shadow",(-6.5,0),N,red);

// Clip to focus on tower area
clip(box((-15,-1),(-11,2)));