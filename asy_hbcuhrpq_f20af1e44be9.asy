real scale = 1;
unitsize(scale*cm); //1 point is 1 cm


real C = 10; //diameter of clearing
real D = 1; //diameter of tube
real L = 3; //length of tube
real W = C*D/L; //width of animal

//DRAWING

//clearing
fill(shift(0,C/2)*scale(C/2)*unitcircle, springgreen);

//tube
filldraw(box((-D/2,0),(D/2,-L)),lightgray); 

//pinhole
dot((0,0)); 

//deer

//describing image
pair dim_deer = (200,251); //pixels
real r = dim_deer.x/dim_deer.y;
real true_height = 0.5*W/r; //of object in image, in cm
real h = true_height*scale; //height of image in drawing

string height = "height="+string(h)+"cm";
string deer = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/deer.eps", height);
label(deer, (0,C+h/2));
layer(); //allows drawing on top

//similar triangles
draw((-W/2,C)--(W/2,C)--(0,0)--cycle, blue);
draw((0,0)--(D/2,-L)--(-D/2,-L)--cycle, red);

//measurements

//tube diameter
draw(shift(0,-.2)*((-D/2,-L)--(D/2,-L)),brown+dotted+1bp,Arrows(2mm));
label("$D$",(0,-L-.2),S); 

//tube height
draw(shift(.2,0)*((D/2,-L)--(D/2,0)),brown+dotted+1bp,Arrows(2mm));
label("$L$",(D/2 + .2,-L/2), UnFill); 

//field
draw((0,.1)--(0,C),brown+dotted+1bp,Arrows(2mm));
label("$C$",(0,C/2), UnFill); 

//max animal width
draw(shift(0,.2)*((-W/2,C)--(W/2,C)),brown+dotted+1bp,Arrows(2mm));
label("$W$",(0,C+.2),UnFill); 



//angle
markscalefactor = 0.3;
draw(anglemark((-D/2,-L),(0,0),(D/2,-L)),linewidth(2pt));