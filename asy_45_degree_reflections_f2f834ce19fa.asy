import olympiad;
unitsize(6cm);

real th = 45;
pair hit = rotate(-th/2)*(0,-.5); //first reflection point

//mirrors
path left = (0,0)--rotate(-th/2)*(0,-1);
path right = (0,0)--rotate(th/2)*(0,-1);
draw(left,linewidth(2pt));
draw(right,linewidth(2pt));
//label("mirror",point(left,-1),SE);
//label("mirror",point(right,-1),SW);

//angle of mirrors
//draw(anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
//label("$45^\circ$",(0,-.24),S);

//normal
path normal = shift(hit)*((0,0)--rotate(90-th/2)*(0,-.3));
//draw(normal,dotted);

//angle of incidence
//draw(shift(hit)*anglemark((0,-1),(0,0),rotate(90-th/2)*(0,-1),5),red);
//label("$67.5^\circ$",hit + rotate(th/4)*(0,-.16),SE,red);

//ray with reflections
pair start = hit+(0,-1);

path in = start--hit;
path ref1 = reflect(hit, hit + rotate(90-th/2)*(0,-1))*in;

pair hit2 = intersectionpoint(ref1,right);
path ref2 = reflect(hit2, hit2 + rotate(-90+th/2)*(0,-1))*ref1;

pair hit3 = intersectionpoint(ref2,left);
path ref3 = reflect(hit3, hit3 + rotate(90-th/2)*(0,-1))*ref2;

pair hit4 = intersectionpoint(ref3,right);
pair endpoint = hit4 + (0,-.5);

draw(start--hit--hit2--hit3--hit4--endpoint,   arrow = Arrow(6) , lightolive+linewidth(2pt));

//count the reflections
label("$1$",hit,NW,red);
label("$2$",hit2,NE,red);
label("$3$",hit3,NW,red);
label("$4$",hit4,NE,red);