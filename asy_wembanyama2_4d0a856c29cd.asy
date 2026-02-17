real scale = 0.03;
unitsize(100*scale*cm);

real L = 0.48;
real H = 0.32;
real W = 2.24;
real r = 200/556;
real h = (W*100)*scale*1.05;
real d = W*L/H*.6;
real M = L/d*0.95;

pair P = (d,0);
pair T = (0,W/2);
pair B = (0,-W/2);
pair iT = interp(B,P,(d+L)/d);
pair iB = interp(T,P,(d+L)/d);

string height = "height="+string(h)+"cm";
string wemby = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/wembanyama.eps", height);

// --- Wemby (object) ---
label(reflect((0,0),(0,1))*wemby, (0,.01));
layer();

// --- Create clipped image picture ---
picture img;
label(img, scale(M)*rotate(180)*reflect((0,0),(0,1))*wemby, (d+L,.01));

// define clipping box boundaries (top and bottom of camera)
pair top = (d, H/2);
pair bot = (d, -H/2);
clip(img, box((d, -H/2), (d+L, H/2)));  // clip region = camera interior

add(img);

// --- Camera box and rays ---
path camera = box((0,-H/2),(L,H/2));
draw(shift(P)*camera, linewidth(1pt));
dot(P);
draw(yscale(.6)*(T--iB), red + dashed);
draw(yscale(.6)*(B--iT), red + dashed);
dot(P,black+5pt);