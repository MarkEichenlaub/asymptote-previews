import olympiad;
unitsize(6cm);

//variables
real th = 45; //angle between mirrors
pair hit = rotate(-th/2)*(0,-.5); //first reflection point
pair start = hit+(0,-1); //of incident ray
int n = 10; //number of points



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
draw(anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",(0,-.24),S);

//points along right mirror
pair[] points = {};

for(int i = 0; i<=n; ++i){
    pair p = interp(R1,R2,i/n);
    pair p_ref = reflect(L1,L2)*p;
    pair n = (p+p_ref)/2;

    dot(p,red);
    dot(p_ref,red);
    
    draw(p--n,red);
    draw(n--p_ref,red+dotted);
}