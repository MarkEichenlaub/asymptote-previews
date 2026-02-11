//recommended size setup when using images
real scale = 0.6;
unitsize(scale*cm); //1 point is 1 cm

// define positions
pair sun = (-3,10);
pair you = (0,0);
pair plane = (11,6);


//set up airplane EPS
pair dim_airplane = (200,106); //pixels
real r = dim_airplane.x/dim_airplane.y;
real true_height = 1; //of object in image, in cm
real h = true_height*scale; //height of image in drawing
string height = "height="+string(h)+"cm";
string airplane = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/airplane.eps", height);

//begin drawing
label(reflect((0,0),(0,1))*airplane, plane);
layer(); //allows drawing on top

real theta = 0;

draw(rotate(theta)*((-.5,0)--(.5,0)), blue+linewidth(2pt));
draw(shift(sun)*scale(.2)*unitcircle);
draw((sun.x,0)--(plane.x,0), dotted); //ground

//light paths
draw(sun--you--plane, dashed);

//labels
label("Sun",sun,2*N);
label("mirror",you,2*S, blue);
label("Airplane",plane,4*S);