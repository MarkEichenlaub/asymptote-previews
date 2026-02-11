//recommended size setup when using images
real scale = 2;
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

//labels
label("Sun",sun,2*N);
label("mirror",you,5*N, blue);
label("Airplane",plane,4*S);

//measurements

//Sun horizontal
//draw(you--(sun.x,you.y),brown+dotted+1bp,Arrows(2mm));
//label("$3 \;\mathrm{km}$",interp(you, (sun.x,you.y),.5), UnFill); 

//Sun vertical
draw((sun.x,you.y)--sun,brown+dotted+1bp,Arrows(2mm));
label("$10 \;\mathrm{km}$",(sun.x,sun.y/2 + you.y/2), UnFill); 

//airplane horizontal
//draw(you--(plane.x,you.y),brown+dotted+1bp,Arrows(2mm));
//label("$11 \;\mathrm{km}$",(you.x/2 + plane.x/2,you.y), UnFill); 

//airplane vertical
draw((plane.x,you.y)--plane,brown+dotted+1bp,Arrows(2mm));
label("$6 \;\mathrm{km}$",(plane.x,you.y/2 + plane.y/2), UnFill); 

//mirror angle
markscalefactor = 0.05;
draw(anglemark(dir(theta),you,(1,0)));
label("$\theta$",dir(theta/2)*.47);

clip(box((-1,-1),(1,1)));