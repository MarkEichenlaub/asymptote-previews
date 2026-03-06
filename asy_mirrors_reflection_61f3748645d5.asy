import olympiad;
unitsize(6cm);

real th = 45;
pair hit = rotate(-th/2)*(0,-.5); //first reflection point
pair start = hit+(0,-1);

//mirrors
pair L1 = (0,0);
pair L2 = rotate(-th/2)*(0,-1);
path left = L1--L2;

pair R1 = (0,0);
pair R2 = rotate(th/2)*(0,-1);
path right = R1--R2;

draw(left,linewidth(2pt));
draw(right,linewidth(2pt)+red);
//label("mirror",point(left,-1),SE);
//label("mirror",point(right,-1),SW);

//angle of mirrors
draw(anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",(0,-.24),S);

//reflection 1
draw(reflect(L1,L2)*right,dashed+red);

//reflected angle
draw(rotate(-45)*anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",rotate(-45)*(0,-.24),S);