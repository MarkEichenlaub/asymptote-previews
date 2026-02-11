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


real y = 100;
real dy = 10;

path room = (0,70)--(0,0)--(300,0)--(300,220)--(0,220)--(0,150);
pair roomShift = (100,-100);
fill(shift(roomShift)*room--cycle, gray);
draw(shift(roomShift)*room, linewidth(2pt));

label("room",roomShift+(150,0),S);
label("window",roomShift + (0,150),NE);


pair S = (-100,40);
pair C = (-100,20);
pair V = (-100,0);
pair B = roomShift + (300,110);

// --- sunlight rays ---
pen sunpen = white+linewidth(2pt);

// define a single sunlight direction vector
pair sunDir = (100, -200); // arbitrary direction downward-right

// normalize it
sunDir = sunDir / length(sunDir);

// function to extend sunlight until it exits cyan box
pair limitToCyan(pair p, pair dir) {
  real step = 1;
  for (real t = 0; t < 1000; t += step) {
    pair test = p - dir*t; // go backwards from the point
    if (test.x < -300 || test.x > 400 || test.y < -100 || test.y > 200)
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

// --- diffuse reflections ---
int N = 72;
real L = 600;

bool hitsSolidWall(pair q) {
  pair r = q - roomShift;
  if (r.y >= 0 && r.y <= 220) {
    if (abs(r.x) < 0.5 && (r.y <= 70 || r.y >= 150)) return true;
    if (abs(r.x - 300) < 0.5) return true;
  }
  if (abs(r.y) < 0.5 && r.x >= 0 && r.x <= 300) return true;
  if (abs(r.y - 220) < 0.5 && r.x >= 0 && r.x <= 300) return true;
  return false;
}

pair limitRay(pair p, pair dir) {
  real step = 0.5;
  pair last = p;
  for (real t = 0; t < L; t += step) {
    pair test = p + dir*t;
    if (test.x < -200 || test.x > 400 || test.y < -100 || test.y > 200)
      return last;
    if (hitsSolidWall(test))
      return last;
    last = test;
  }
  return p + L*dir;
}

void drawDiffuse(pair center, pen p) {
  for (int i=0; i<N; ++i) {
    real ang = 360*i/N;
    pair dirv = dir(ang);
    pair endp = limitRay(center, dirv);
    draw(center--endp, p);
  }
}

// draw diffuse rays from S (pink), C (brown), and V (cream)
pen pink = rgb(1,0.6,0.8)+linewidth(0.7pt);
pen brown = rgb(0.4,0.2,0.05)+linewidth(0.7pt);
pen cream = rgb(1,0.97,0.85)+linewidth(0.7pt);

drawDiffuse(S, pink);
drawDiffuse(C, brown);
drawDiffuse(V, cream);

draw(shift(roomShift)*room, linewidth(2pt));


pair bot = interp(S,(0,y+dy/2) + roomShift,(300+roomShift.x+100)/(roomShift.x+100));
pair mid = interp(C,(0,y+dy/2) + roomShift,(300+roomShift.x+100)/(roomShift.x+100));
pair top = interp(V,(0,y+dy/2) + roomShift,(300+roomShift.x+100)/(roomShift.x+100));

path blueBox = box((-5,-8),(5,8));

//draw(shift(bot)*blueBox,blue+linewidth(1.5pt));
//label("top",top + (5,0),E,blue);
draw(shift(mid)*blueBox,blue+linewidth(1.5pt));
//label("middle",mid + (5,0),E,blue);
//draw(shift(top)*blueBox,blue+linewidth(1.5pt));
//label("bottom",bot + (5,0),E,blue);