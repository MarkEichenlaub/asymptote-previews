size(6cm);

path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
draw(shift(.5,0)*scale(.6)*person);

draw((1,0)--(2,1)--(3,0));
draw((2.5,.5)--(3.2,1.2)--(4.4,0));

label("near", (2,0), S);
label("far", (3.6,0), S);

// lightolive pens
pen thickPen = lightolive + linewidth(2);
pen thinPen  = lightolive + linewidth(0.25);

// parallel incoming direction (degrees) and length
real a = -45;
real L = 3;

// hit points near the middles
pair hit1 = (2,0.5);
pair hit2 = ((2.5+3.2+4.4)/3, (0.5+1.2+0)/3); // centroid ≈ (3.3667, 0.5667)

// draw the two parallel thick rays (from above-left) with arrows
draw(hit1 - L*dir(a) -- hit1, thickPen, arrow=Arrow(6));
draw(hit2 - L*dir(a) -- hit2, thickPen, arrow=Arrow(6));

// scatter function: 10 thin rays equally spaced, twice the previous length
void scatter(pair P){
  int n = 10;
  real r = 1.0;
  for(int i=0; i<n; ++i){
    real ang = 360*i/n;              // degrees for dir()
    draw(P -- (P + r*dir(ang)), thinPen, arrow=Arrow(6));
  }
}

scatter(hit1);
scatter(hit2);