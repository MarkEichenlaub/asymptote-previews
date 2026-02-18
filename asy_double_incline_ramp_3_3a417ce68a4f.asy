import olympiad;

unitsize(2cm);

//ball radius
real r = .1;

//slopes of ramps
real leftangle = 45;
real rightangle = 25;

//set automatically, used for calculating where to draw the ramp
real leftslope = -1*Tan(leftangle);
real rightslope = Tan(rightangle);

//height of ramps
real height = 1;

//how long it takes the ramp to go from sloped to flat
real transitionx = .3;
//how long it stays flat
real flatx = .4;

//used to calculate the transition from flat to slopes
real h1 = -.5*transitionx*leftslope;
real h2 = .5*transitionx*rightslope;

//used to calculate how far the ramp should go in the x direction
real leftx = (height-h1) / leftslope;
real rightx = (height - h2) / rightslope;

draw((-1*transitionx-flatx+leftx,height)--(-1*transitionx-flatx,h1){1,leftslope}..{1,0}(-1*flatx,0)--(flatx,0){1,0}..{1,rightslope}(flatx+transitionx,h2)--(flatx+transitionx + rightx,height),linewidth(2pt));

//first and last balls
//draw(shift((r+.02)*dir(90-leftangle))*shift(-1*flatx-transitionx+leftx,height)*scale(.1)*unitcircle,dotted);

//draw(shift((r+.02)*dir(180-rightangle))*shift(flatx+transitionx+rightx,height)*scale(.1)*unitcircle);

//ball on the flat
//draw(shift(0,r+.02)*scale(.1)*unitcircle, dotted);

//returns a point a fraction "p" down the flat part of the left hand slope
pair fleft(real p){
return (1-p)*(-1*flatx-transitionx+leftx,height)+p*(-flatx-transitionx,h1);
}

//returns a point a fraction "p" down the flat part of the right hand slope
pair fright(real p){
return (1-p)*(flatx+transitionx+rightx,height)+p*(flatx+transitionx,h2);
}

//balls on left incline
real pp = .8;
//draw(shift((r+.02)*dir(90-leftangle))*shift(fleft(.3))*scale(.1)*unitcircle,dotted);
draw(shift((r+.02)*dir(90-leftangle))*shift(fleft(pp))*scale(.1)*unitcircle);
pair pos1 = shift((r+.02)*dir(90-leftangle))*fleft(pp);

draw(shift((r+.02)*dir(90-leftangle))*shift(fleft(pp))*rotate(leftangle+180)*((0,0)--(0,.3)), arrow = Arrow(6));

//balls on right incline
real rightpp = 1 - ((1-pp)*rightslope/(-1*leftslope));
//draw(shift((r+.05)*dir(180-rightangle))*shift(fright(rightpp))*scale(.1)*unitcircle);
pair pos2 = shift((r+.05)*dir(180-rightangle))*fright(rightpp);
//draw(shift((r+.02)*dir(180-rightangle))*shift(fright(.8))*scale(.23)*((0,0)--(1,rightslope)), arrow = Arrow(6));
//draw(shift((r+.02)*dir(180-rightangle))*shift(fright(.8))*scale(.1)*unitcircle,dotted);

//draw(pos1--(0,pos1.y),dashed+blue);
//draw((0,pos2.y)--pos2,dashed+blue);
//label("$x$",(pos1.x/2,pos1.y),N,blue);
//label("$x$",(pos2.x/2,pos2.y),N,blue);
//draw((0,-.2)--(0,1.2),dotted);