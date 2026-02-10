unitsize(3cm);
// Person
path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
draw(person);

filldraw(shift((2.2,.2))*rotate(45)*box((0,0),(.6,.6)), gray);
filldraw(box((2,0),(2.4,.4)), gray);

// Main arrows
draw(shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);

pair d = (.1,.1);
draw(shift(d)*shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);
draw(shift(2*d)*shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);
draw(shift(3*d)*shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);

// --- Scattering ---
pen scatpen = linewidth(0.25pt) + lightolive;

// Rectangle defined by corner at P0 with orthogonal edges a (along 45°) and b (along 135°)
pair P0 = (1.8,.7);
pair a  = (0.3,0.3);                // from (1.8,.7) to (2.1,1)
pair b  = (-2/sqrt(2), 2/sqrt(2));  // length 4, along 135°

int N = 20; // number of scattering arrows
for(int i=0; i<N; ++i){
  real u = (rand() % 10000)/10000.0;
  real v = (rand() % 10000)/10000.0;
  pair P = P0 + u*a + v*b;          // random point in rectangle
  real ang = 360 * ((rand() % 10000)/10000.0);  // random direction
  draw(P -- (P + 2*dir(ang)), arrow=Arrow(4), scatpen);
}