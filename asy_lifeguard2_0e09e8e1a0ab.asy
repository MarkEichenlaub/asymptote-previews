real scale = 0.01;
unitsize(scale*cm); //1 point is 1 cm

real d = 1000;

//buoy
pair dim_buoy = (326,266); //pixels
real r = dim_buoy.x/dim_buoy.y;
real true_height = 50; //of object in image, in cm
real h = true_height*scale; //height of image in drawing

string height = "height="+string(h)+"cm";
string buoy = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/buoy.eps", height);
label(buoy, (d,true_height/2));
layer(); //allows drawing on top

//lifeguard
pair dim_lifeguard = (256,500); //pixels
real r = dim_lifeguard.x/dim_lifeguard.y;
real true_height = 160; //of object in image, in cm
real h = true_height*scale; //height of image in drawing
real true_width = true_height*r;

string height = "height="+string(h)+"cm";
string lifeguard = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/lifeguard.eps", height);
label(lifeguard, (0,true_height/2));
layer(); //allows drawing on top


//sand
fill(box((-100,0),(true_width/2,-100)),yellow);
//water
fill(box((true_width/2,-100),(d*1.1,0)), cyan);

//line of sight
draw((14,true_height*.88)--(d,25), dashed);