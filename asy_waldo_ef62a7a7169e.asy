//recommended size setup when using images
real scale = 0.07;
unitsize(scale*cm); //1 point is 1 cm

//describing scene
pair dim_ba_waldo = (1013,1343); //pixels
real r = dim_ba_waldo.x/dim_ba_waldo.y;
real true_height = 100; //of object in image, in cm
real true_width = r*true_height;
real h = true_height*scale; //height of image in drawing

//draw scene
string height = "height="+string(h)+"cm";
string ba_waldo = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/ba_waldo.eps", height);
label(ba_waldo, (0,0));
layer(); //allows drawing on top

//set up camera and image in camera
real L = 20;
real H = 20;
path camera = box((0,-H/2),(L,H/2));

pair P = (60,0);//pinhole
pair BL = P-(0,H/2);//bottom left
pair BR = BL + (L,0);
pair TR = BR + (0,H);
pair TL = BL + (0,H);

real M = L/P.x;

picture img;
label(img,rotate(180)*scale(M)*ba_waldo,interp(BR,TR,0.5));
clip(img, box((BR.x+H/2*r, BR.y), (TR.x-H/2*r, TR.y)));  // clip region = camera interior
add(img);


draw(shift(P)*camera, linewidth(2pt));
dot(P,black+7pt);

pair top = interp(BR,P,P.x/L + 1);
pair bot = interp(TR,P,P.x/L + 1);
draw(BR--top, dashed);
draw(TR--bot, dashed);

label("low magnification",(BL+BR)/2,S);

/////////////// SECOND IMAGE WITH LONG CAMERA ////////////

real dy = -120;


//draw scene
label(ba_waldo, (0,dy));
layer(); //allows drawing on top

//set up camera and image in camera
real L2 = 200;
path camera2 = box((0,-H/2),(L2,H/2));

pair P2 = (60,dy);//pinhole
pair BL2 = P2-(0,H/2);//bottom left
pair BR2 = BL2 + (L2,0);
pair TR2 = BR2 + (0,H);
pair TL2 = BL2 + (0,H);
real M2 = L2/P2.x;



real ys = 32;

// --- Create clipped image picture ---
picture img2;
label(img2,rotate(180)*scale(M2)*ba_waldo,interp(BR2,TR2,0.5)+(100,ys*(1+M2)));
clip(img2, shift(0,ys)*box((BR2.x+H/2*r, BR2.y), (TR2.x-H/2*r, TR2.y)));  // clip region = camera interior
add(img2);


draw(shift(0,ys)*shift(P2)*camera2, linewidth(2pt));
dot(P2+(0,ys),black+7pt);

real dx = P2.x-true_width/2*.8;

pair top2 = interp(BR2,P2,dx/L2+1);
pair bot2 = interp(TR2,P2,dx/L2+1);
draw(shift(0,ys)*(BR2--top2), dashed);
draw(shift(0,ys)*(TR2--bot2), dashed);

label("high magnification",(BL2+BR2)/2+(0,ys),S);