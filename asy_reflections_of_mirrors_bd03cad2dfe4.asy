import olympiad;
unitsize(6cm);

real th = 45;
pair hit = rotate(-th/2)*(0,-.5); //first reflection point
pair start = hit+(0,-1);
int n = 5;

//mirrors
pair L1 = (0,0);
pair L2 = rotate(-th/2)*(0,-1);
path left = L1--L2;

pair R1 = (0,0);
pair R2 = rotate(th/2)*(0,-1);
path right = R1--R2;

draw(left,linewidth(2pt)+blue);
draw(right,linewidth(2pt)+red);
//label("mirror",point(left,-1),SE);
//label("mirror",point(right,-1),SW);

//angle of mirrors
draw(anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",(0,-.24),S);

//reflections of mirrors
path ref1 = rotate(-45)*left;
path ref2 = rotate(-90)*left;
path ref3 = rotate(-135)*left;
path ref4 = rotate(-180)*left;

draw(ref1,dashed+red+linewidth(2pt));
draw(ref2, dashed+blue+linewidth(2pt));
draw(ref3, dashed+red+linewidth(2pt));
draw(ref4, dashed+blue+linewidth(2pt));

//reflected angles
draw(rotate(-45)*anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",rotate(-45)*(0,-.24),SW);

draw(rotate(-90)*anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",rotate(-90)*(0,-.24),W);

draw(rotate(-135)*anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",rotate(-135)*(0,-.24),NW);

draw(rotate(180)*anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",rotate(180)*(0,-.24),N);

//path of light
path light = shift(start)*((0,0)--(0,2.5));
draw(light,   arrow = Arrow(6) , lightolive);

//points where light is reflected
pair p = intersectionpoint(light,left);
pair p1 = intersectionpoint(light,ref1);
pair p2 = intersectionpoint(light,ref2);
pair p3 = intersectionpoint(light,ref3);


dot(p,deepgreen+8pt);
dot(p1,deepgreen+8pt);
dot(p2,deepgreen+8pt);
dot(p3,deepgreen+8pt);

label("$1$",p,E,deepgreen+fontsize(14pt));
label("$2$",p1,SE,deepgreen+fontsize(14pt));
label("$3$",p2,NE,deepgreen+fontsize(14pt));
label("$4$",p3,E,deepgreen+fontsize(14pt));