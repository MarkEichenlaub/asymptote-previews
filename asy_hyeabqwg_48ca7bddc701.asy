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

label(rotate(180)*scale(3/2)*ice_cream, (400,0));
layer();

// Reference points (ice cream)
pair S = (-100,40);
pair C = (-100,20);
pair V = (-100,0);

// Colors
pen pink = rgb(1,0.6,0.8)+linewidth(0.7pt);
pen brown = rgb(0.4,0.2,0.05)+linewidth(0.7pt);
pen cream = rgb(1,0.97,0.85)+linewidth(0.7pt);
pen lightbrown = rgb(0.6,0.4,0.2)+linewidth(0.7pt);

// Target midpoint and wall geometry
pair midPt = (0,y+dy/2) + roomShift;
real wallX = 300 + roomShift.x;

// Vertical range for rays
real topY = 50; // start slightly above S to reach top of image
real bottomY = -40;
int n = 20;

// Layer Y thresholds
real pinkTop = 50; // top of the ice cream image
real pinkMid = (S.y + C.y)/2;
real brownMid = (C.y + V.y)/2;
real creamEnd = brownMid - (C.y - V.y);

// Center of cone
pair center = (-100,(topY+bottomY)/2);

// Draw rays
for (int i=0; i<=n; ++i) {
  real yPos = topY - (topY - bottomY)*i/n;
  pair start = (center.x, yPos);
  // Find intersection with back wall by interpolation
  real t = (wallX - start.x)/(midPt.x - start.x);
  pair end = start + t*(midPt - start);
  
  // Choose color by y
  pen col;
  if (yPos >= pinkMid) col = pink;
  else if (yPos >= brownMid) col = brown;
  else if (yPos >= creamEnd) col = cream;
  else col = lightbrown;
  
  draw(start--end, col);
}

draw(shift(roomShift)*room, linewidth(2pt));