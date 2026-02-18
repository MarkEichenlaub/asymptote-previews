import geometry;

real scale = 0.02;
unitsize(100*scale*cm); //now one point is 1 meter

real L = 0.48; //length of camera, i.e. image distance
real H = 0.32; //height of camera
real W = 2.24; //Wemby real height
real r = 200/556; //aspect ratio of Wemby image
real h = (W*100)*scale*1.05; //Wemby height in drawing, in cm. fudge factor to account for imperfect cropping
real d = W*L/H; //distance from Wemby to camera
real M = L/d*0.95; //magnification (magnitude) with fudge factor

pair P = (d,0); //pinhole
pair T = (0,W/2); //top of Wemby
pair B = (0,-W/2);

//draw wemby
string height = "height="+string(h)+"cm";
string wemby = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/wembanyama.eps", height);
label(reflect((0,0),(0,1))*wemby, (0,.01));
layer();

//draw wemby image
pair imgBack = (d+L,0);
label(scale(M)*rotate(180)*reflect((0,0),(0,1))*wemby, imgBack + (0,.01));
layer();

//draw camera
path camera = box((0,-H/2),(L,H/2));
draw(shift(P)*camera, linewidth(1pt));
dot(P);

// --- Rays must pass THROUGH the pinhole, then to the back wall (x = d+L) ---
// For a source point S=(0,Sy), the y at the back wall is y_w = -Sy*(L/d)
real yT = -T.y*(L/d);
real yB = -B.y*(L/d);

// Top ray: T -> P -> back wall
draw(T--P, red + dashed);
draw(P--(d+L, yT), red + dashed);

// Bottom ray: B -> P -> back wall
draw(B--P, red + dashed);
draw(P--(d+L, yB), red + dashed);

dot(P,black+5pt);

// --- SECOND (CROUCHING) VERSION BELOW ---

real W2 = 0.7*W; // 70% height for crouching version
real h2 = (W2*100)*scale*1.05;
real d2 = d; // keep horizontally aligned camera
real M2 = L/d2*0.95;

pair offset = (0, -2.5); // vertical offset to place below original
pair P2 = (d2,0) + offset;
pair T2 = (0,W2/2) + offset;
pair B2 = (0,-W2/2) + offset;

//draw crouching wemby
string height2 = "height="+string(h2)+"cm";
string wemby2 = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/wembanyama_crouch.eps", height2);
label(reflect((0,0),(0,1))*wemby2, (0,.01) + offset);
layer();

//draw crouching Wemby image
label(scale(M2)*rotate(180)*reflect((0,0),(0,1))*wemby2, (d2+L,.01) + offset);
layer();

//draw camera for crouching version
draw(shift(P2)*camera, linewidth(1pt));
dot(P2);

// Rays for crouching version: through P2, then to back wall x=d2+L
real yT2 = -(T2.y - offset.y)*(L/d2) + offset.y; // compute using source y relative to origin, then shift back
real yB2 = -(B2.y - offset.y)*(L/d2) + offset.y;

// Ensure segments explicitly go via P2
draw(T2--P2, red + dashed);
draw(P2--(d2+L, yT2), red + dashed);

draw(B2--P2, red + dashed);
draw(P2--(d2+L, yB2), red + dashed);

dot(P2,black+5pt);