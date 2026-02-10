import graph;
size(300);

// incoming ray
draw((-1,0)--(0,0), arrow = MidArrow, red);

//translucent material
draw(rotate(-90)*((-0.8,0)--(0.8,0)), linewidth(1pt));



// Lambertian reflection: I ∝ cos(θ)
int n = 9; // number of outgoing rays
real sumL = 0;
real[] lengths;
real[] angles;

for (int i = 0; i < n; ++i) {
  real a = i * 180/(n-1); // 0° to 180°
  angles.push(a);
  real L = abs(cos((a-90)*pi/180)); // Lambert’s law w.r.t. surface normal
  lengths.push(L);
  sumL += L;
}

// normalize so total length = 1
for (int i = 0; i < n; ++i) {
  lengths[i] /= sumL;
  pair endpt = 2*lengths[i]*dir(angles[i]);
  draw(rotate(-90)*((0,0)--endpt), p = red, Arrow(4));
}

label("Translucency", (0,-.8),S);

pair s = (3,0);

// incoming ray
draw(shift(s)*((-1,0)--(0,0)), arrow = MidArrow, red);
draw(shift(s)*((0,0)--(1,0)), arrow = EndArrow, red);

//transparent material
draw(shift(s)*rotate(-90)*((-0.8,0)--(0.8,0)), linewidth(1pt));


label("Transparency", s+(0,-.8),S);