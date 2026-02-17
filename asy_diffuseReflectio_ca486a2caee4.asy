import graph;
size(200);

real theta = 35;
real r = 2;

pen g = red;

// incoming ray
pair laser_start = r*dir(90+theta);
pair laser_end = r*dir(90-theta);

draw((-1.2,0)--(1.2,0), linewidth(2pt));
label("white paper",(0,0),S);

draw(laser_end--(0,0), p = g, arrow = MidArrow);
label("laser",0.8*laser_end,SE,p = g);

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
  draw((0,0)--endpt, p = g, Arrow(4));
}

label("Diffuse Reflection", (0,-.4),S);