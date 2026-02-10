unitsize(.2cm);

//plano-convex lens

real R = 20; //radius of curvature
real t = 1; // thickness at thickest part
real x = R-t; //distance from center of curvature to flat side of lens

real h = sqrt(R^2 - (R-t)^2); //half the height

real theta = atan(h/(R-t)); //half angle subtended by lens, from center of curvature
real theta_deg = theta * 180/pi;

draw(arc((0,0),R,180-theta_deg, 180 + theta_deg) );
draw((-x,-h)--(-x,h));

int n = 6;

real dy = 2*h/(n-1);

for (int i = 0; i<n; ++i){
real y = h-i*dy;
draw((-x,y)--(-x + 2*h,y), deepgreen);
}