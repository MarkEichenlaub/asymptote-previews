//recommended size setup when using images
real scale = 0.02;
unitsize(scale*cm); //1 point is 1 cm

pair dim_ice_cream = (151,400);
real true_height = 100;
real h = true_height*scale;

fill(box((-200,-100),(400,200)), cyan);

string height = "height="+string(h)+"cm";
string ice_cream = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/ice_cream.eps", height);
label(ice_cream, (-100,0));
layer();

// --- Room setup ---
real y = 100;
real dy = 10;
path room = (0,y)--(0,0)--(300,0)--(300,220)--(0,220)--(0,y+dy);
pair roomShift = (100,-100);
fill(shift(roomShift)*room--cycle, gray);
draw(shift(roomShift)*room, linewidth(2pt));

pair S = (-100,40);
pair C = (-100,20);
pair V = (-100,0);

pen sunpen = white+linewidth(2pt);
pair sunDir = (100, -200);
sunDir = sunDir / length(sunDir);

pair limitToCyan(pair p, pair dir) {
  real step = 1;
  for (real t = 0; t < 1000; t += step) {
    pair test = p - dir*t;
    if (test.x < -100 || test.x > 400 || test.y < -100 || test.y > 200)
      return p - dir*(t - step);
  }
  return p;
}

void drawSunRay(pair endPoint, pen p) {
  pair startPoint = limitToCyan(endPoint, sunDir);
  draw(startPoint--endPoint, p);
}

drawSunRay(S, sunpen);
drawSunRay(C, sunpen);
drawSunRay(V, sunpen);

// --- Diffuse reflections ---
int N = 72;
real L = 600;
path shiftedRoom = shift(roomShift)*room;

pair limitRay(pair p, pair dir) {
  pair best = p + L*dir;
  real bestDist = L;

  real t;
  if (dir.x != 0) {
    t = (-200 - p.x)/dir.x; if (t > 0 && t < bestDist) bestDist = t;
    t = (400 - p.x)/dir.x;  if (t > 0 && t < bestDist) bestDist = t;
  }
  if (dir.y != 0) {
    t = (-100 - p.y)/dir.y; if (t > 0 && t < bestDist) bestDist = t;
    t = (200 - p.y)/dir.y;  if (t > 0 && t < bestDist) bestDist = t;
  }

  path ray = p--(p + L*dir);
  for (int i = 0; i < length(shiftedRoom); ++i) {
    pair a = point(shiftedRoom, i);
    pair b = point(shiftedRoom, i+1);
    path wall = a--b;
    pair[] pts = intersectionpoints(ray, wall);
    for (int j = 0; j < pts.length; ++j) {
      real d = length(pts[j] - p);
      if (d > 0 && d < bestDist) bestDist = d;
    }
  }

  return p + bestDist*dir;
}

void drawDiffuse(pair center, pen p) {
  for (int i = 0; i < N; ++i) {
    real ang = 360*i/N;
    pair dir = dir(ang);
    pair endp = limitRay(center, dir);
    draw(center--endp, p);
  }
}

pen pink = rgb(1,0.6,0.8)+linewidth(0.7pt);
pen brown = rgb(0.4,0.2,0.05)+linewidth(0.7pt);
pen cream = rgb(1,0.97,0.85)+linewidth(0.7pt);



pair bot = interp(S,(0,y+dy/2) + roomShift,(300+roomShift.x+100)/(roomShift.x+100));
pair mid = interp(C,(0,y+dy/2) + roomShift,(300+roomShift.x+100)/(roomShift.x+100));
pair top = interp(V,(0,y+dy/2) + roomShift,(300+roomShift.x+100)/(roomShift.x+100));

draw(S--bot, pink);
draw(C--mid, brown);
draw(V--top, cream);


drawDiffuse(S, pink);
drawDiffuse(C, brown);
drawDiffuse(V, cream);



draw(shift(roomShift)*room, linewidth(2pt));




path blueBox = box((-5,-8),(5,8));

draw(shift(bot)*blueBox,blue+linewidth(1.5pt));
label("Top",top + (5,0),E,blue);
draw(shift(mid)*blueBox,blue+linewidth(1.5pt));
label("Middle",mid + (5,0),E,blue);
draw(shift(top)*blueBox,blue+linewidth(1.5pt));
label("Bottom",bot + (5,0),E,blue);