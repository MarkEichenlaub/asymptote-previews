real scale = 0.03;
unitsize(100*scale*cm); // now one point is 1 meter

real L = 0.48; // camera length (image distance)
real H = 0.32; // camera height
real W = 2.24; // Wemby real height
real r = 200/556; // image aspect ratio
real h = (W*100)*scale*1.05; // drawn height (cm)
real d = W*L/H; // distance from Wemby to camera
real M = L/d*0.95; // magnification

// --- Upper setup ---
pair P = (d,0); //pinhole
pair T = (0,W/2); //top of wemby
pair B = (0,-W/2); //bottom of wemby
pair iT = interp(B,P,(d+L)/d); //top back corner of camera
pair iB = interp(T,P,(d+L)/d);

string height = "height="+string(h)+"cm";
string wemby = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/wembanyama.eps", height);

// draw original Wemby and image
label(reflect((0,0),(0,1))*wemby, (0,.01));
layer();
label(scale(M)*rotate(180)*reflect((0,0),(0,1))*wemby, (d+L,.01));
layer();

// draw upper camera + rays
path camera = box((0,-H/2),(L,H/2));
draw(shift(P)*camera, linewidth(1pt));
draw(T--iB, red + dashed);
draw(B--iT, red + dashed);
dot(P, black+5pt);

// --- Lower setup (closer by 1 m) ---
real offset = -2.5;

real H2 = H;
M = L/d*0.95;

pair P2 = (d,offset); //pinhole
pair T2 = (0,W/2+offset);//top of wemby
pair B2 = (0,-W/2+offset); //bottom of wemby
pair iT2 = interp(B2,P2,(W+H2)/W);
pair iB2 = interp(T2,P2,(W+H2)/W);

// draw lower Wemby before clipping so the image exists in the scope
label(reflect((0,0),(0,1))*wemby, (0,.01+offset));
layer();

// --- Create clipped image picture ---
//picture img;
real W = 2.24; // Wemby real height
real r = 200/556; // image aspect ratio
real h = (W*100)*scale*1.05; // drawn height (cm)
//label(img, scale(M)*rotate(180)*reflect((0,0),(0,1))*wemby, (d+L,.01+offset));

// define clipping box boundaries (top and bottom of camera)
//pair top = (d, H/2+offset);
//pair bot = (d, -H/2+offset);
//clip(img, box((d, -H/2+offset), (d+L, H/2+offset)));  // clip region = camera interior

//add(img);

path camera = box((0,-H/2),(L,H/2));
draw(shift(P2)*camera, linewidth(1pt));
//draw(T2--iB2, red + dashed);
//draw(B2--iT2, red + dashed);
dot(P2 - (0,.02), black+5pt);
dot(P2 + (0,.02), black+5pt);