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

draw(left,linewidth(2pt));
draw(right,linewidth(2pt));
//label("mirror",point(left,-1),SE);
//label("mirror",point(right,-1),SW);

//angle of mirrors
//draw(anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
//label("$45^\circ$",(0,-.24),S);

//reflection 1
draw(reflect(L1,L2)*right,dashed);

//reflected angle
//draw(rotate(-45)*anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
//label("$45^\circ$",rotate(-45)*(0,-.24),S);

//path of light with first reflection
path in = start--hit;
path ref1 = reflect(hit, hit + rotate(90-th/2)*(0,-1))*in;

pair hit2 = intersectionpoint(ref1,right);

draw(start--hit--hit2,   arrow = Arrow(6) , linewidth(2pt)+lightolive);

//image points for first reflection
for(int i = 0; i<=n; ++i){
    pair p = interp(hit,hit2,i/n);
    pair q = reflect(L1,L2)*p;
    pair n = (p+q)/2;

    dot(p,red);
    dot(q,red);
    draw(p--n,red);
    draw(n--q,red+dotted);
}