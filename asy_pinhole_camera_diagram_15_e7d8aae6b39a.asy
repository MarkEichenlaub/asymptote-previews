real scale = 0.02;
unitsize(100*scale*cm); //now one point is 1 meter

real L = 0.48; //length of camera, i.e. image distance
real H = 0.32; //height of camera
real W = 2.24; //Wemby real height
real r = 200/556; //aspect ratio of Wemby image
real h = (W*100)*scale*1.05; //Wemby height in drawing, in cm. fudge factor to account for imperfect cropping
real d = W*L/H; //distance from Wemby to camera
real M = L/d*0.95; //magnification (magnitude) with fudge factor

pair P = (d,0); //pinhole
pair T = (0,W/2); //top of Wemby
pair B = (0,-W/2);
pair iT = interp(B,P,(d+L)/d); //top and bottom of image
pair iB = interp(T,P,(d+L)/d);

//draw wemby
string height = "height="+string(h)+"cm";
string wemby = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/wembanyama.eps", height);
label(reflect((0,0),(0,1))*wemby, (.08,.01)); //position isn't (0,0) due to imperfect cropping
layer();

//draw wemby image
label(scale(M)*rotate(180)*reflect((0,0),(0,1))*wemby, (d+L,.01)); //position isn't (0,0) due to imperfect cropping
layer();

//draw camera
path camera = box((0,-H/2),(L,H/2));
draw(shift(P)*camera, linewidth(1pt));
dot(P);

//draw rays
draw(T--iB, red + dashed);
draw(B--iT, red+dashed);

dot(P,black+5pt);

draw(shift((0,.05))*shift(P)*( (0,H/2)--(L,H/2) ),brown+dotted+1bp,Arrows(2mm));
label("$48 \;\mathrm{cm}$",shift((0,.05))*P+(L/2,H/2), UnFill);

draw(shift((.2,.0))*shift(P)*( (L,H/2)--(L,-H/2) ),brown+dotted+1bp,Arrows(2mm));
label("$32 \;\mathrm{cm}$",shift((.3,.0))*P+(L,0), NoFill);

draw(shift((-.4,.0))*( (0,-W/2)--(0,W/2) ),brown+dotted+1bp,Arrows(2mm));
label(rotate(90)*"$224 \;\mathrm{cm}$",(-.45,.0), NoFill);

draw(shift((0,.1))*( T--(P.x,T.y) ),brown+dotted+1bp,Arrows(2mm));
label("${\rm Distance}$",(P.x/2,T.y+.2), NoFill);

draw(B--P--T--cycle,red+linewidth(2pt));
draw(P--iB--iT--cycle, blue+linewidth(2pt));