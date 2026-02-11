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

real theta = -45;

draw(rotate(theta)*((-.5,0)--(.5,0)), blue+linewidth(2pt));
draw(shift(sun)*scale(.2)*unitcircle);
draw((sun.x,0)--(plane.x,0), dotted); //ground

//light paths
draw(sun--you--plane, dashed);

//perpendicular to mirror
pair above = you + rotate(theta)*(0,10);
draw(you--above, blue+dotted);

//angle to sun
pen ang1 = deepgreen;
markscalefactor = .25;
draw(anglemark(above,you,sun),ang1);

//angle to plane
pen ang2 = red;
markscalefactor = .20;
draw(anglemark(plane,you,above),ang2);

//labels
label("Sun",sun,2*N);
label("mirror",you,2*S, blue);
label("Airplane",plane,4*S);

label("$\shortstack{angle of \\ incidence}$",interp(you,sun,.1),W,ang1);
label("$\shortstack{angle of \\ reflection}$",interp(you,plane,.1),3*E,ang2);