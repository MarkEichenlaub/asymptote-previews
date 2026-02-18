//recommended size setup when using images
real scale = 0.02;
unitsize(scale*cm); //1 point is 1 cm

//describing image
pair dim_ice_cream = (151,400); //pixels
real r = dim_ice_cream.x/dim_ice_cream.y;
real true_height = 100; //of object in image, in cm
real h = true_height*scale; //height of image in drawing

fill(box((-200,-100),(400,200)), cyan);

string height = "height="+string(h)+"cm";
string ice_cream = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/ice_cream.eps", height);
label(ice_cream, (-100,0));
layer(); //allows drawing on top

path room = (0,70)--(0,0)--(300,0)--(300,220)--(0,220)--(0,150);

pair roomShift = (100,-100);

fill(shift(roomShift)*room--cycle, gray);
draw(shift(roomShift)*room, linewidth(2pt));

label("room",(100,-100)+(150,0),S);
label("window",(100,-100) + (0,150),NE);