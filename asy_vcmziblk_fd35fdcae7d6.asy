size(6cm);

// Scene
path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
draw(shift(.5,0)*scale(.6)*person);

draw((1,0)--(2,1)--(3,0));                    // near mountain
draw((2.5,.5)--(3.2,1.2)--(4.4,0));            // far mountain

label("near", (2,0), S);
label("far", (3.6,0), S);

// Pens (use Asymptote's built-in lightolive)
pen thickPen = lightolive + linewidth(2);
pen thinPen  = lightolive + linewidth(0.25);

// Parallel thick rays (unchanged)
real a = -45;
real L = 3;
pair hit1 = (2,0.5);
pair hit2 = ((2.5+3.2+4.4)/3, (0.5+1.2+0)/3); // ≈ (3.3667, 0.5667)
pair A1 = hit1 - L*dir(a), B1 = hit1;
pair A2 = hit2 - L*dir(a), B2 = hit2;
draw(A1--B1, thickPen, arrow=Arrow(6));
draw(A2--B2, thickPen, arrow=Arrow(6));

// Simple RNG helper using rand()
real urand(){ return (rand()%100000)/100000.0; }

// Air scattering along a thick ray: 10 thin arrows at random points/directions
void airScatter(pair A, pair B){
  int n=10;
  real r=1.0; // same length as before
  for(int i=0;i<n;++i){
    real t = 0.1 + 0.8*urand();     // avoid endpoints
    pair P = A + t*(B-A);
    real ang = 360*urand();
    draw(P -- (P + r*dir(ang)), thinPen, arrow=Arrow(6));
  }
}

// Apply air scattering to each thick ray
airScatter(A1,B1);
airScatter(A2,B2);