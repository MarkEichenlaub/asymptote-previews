//recommended size setup when using images
real scale = 0.1;
unitsize(scale*cm); //1 point is 1 cm

//describing image
pair dim_test = (211,395); //pixels
real r = dim_test.x/dim_test.y;
real true_height = 56; //of object in image, in cm
real h = true_height*scale; //height of image in drawing

string height = "height="+string(h)+"cm";
string test = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/haibao.eps", height);
label(test, (0,0), align=N);
layer(); //allows drawing on top

draw(shift((50,0))*((0,21)--(0,49)),linewidth(2pt));

draw((0,-10)--(50,-10),brown+dotted+1bp,Arrows(2mm));
label("$50 \;\mathrm{cm}$",(25,-10), UnFill); 

draw((-15,0)--(-15,56),brown+dotted+1bp,Arrows(2mm));
label(rotate(90)*"$56 \;\mathrm{cm}$",(-18,28), UnFill);