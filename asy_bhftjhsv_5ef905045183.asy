unitsize(2cm);

//ball radius
real r = .1;

//slopes of ramps
real leftangle = 45;
real rightangle = 45;
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

draw(shift((r+.02)*dir(90-leftangle))*shift(-1*flatx-transitionx+leftx,height)*scale(.1)*unitcircle);