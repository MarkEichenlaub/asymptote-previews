unitsize(2cm);

path uparrow(){
path arrow =  (-.1,0)--(.1,0)--(.1,.8)--(.2,.8)--(0,1)--(-.2,.8)--(-.1,.8)--cycle;
return arrow;
}

draw(shift(-2,0)*uparrow());

path candle(){
real width = .2;
real height = 1;
real r = 1.5;
path cand = (0,0)--(width,0)--(width,height)--(0,height)--(0,0)--(0,height)--(width/2,height)--(width/2,1.1*height)--arc( ((width/2,1.1*height)+(0,r)),r, -90 + asin(width/(3*r))*180/pi,-90-asin(width/(3*r))*180/pi){0,1}..{1,5}(width/2,1.6*height){1,-5}..{0,-1}(width/2 + width/3,1.1*height + (1-cos(asin(width/(3*r)))) );
return cand;
}

path lens(real h, real r){
real dist = sqrt(r^2 - h^2/4);
real theta = asin(h/(2*r));
real theta_deg = theta * 180/pi;
path len = arc((dist,0),r,180+theta_deg,180-theta_deg);
len = len--rotate(180)*len;
return len;
}

path eye(){
path eyep = (1,.5)--(0,0)--(1,-.5)--arc((0,0),.7,-atan(.5)*180/pi,atan(.5)*180/pi);
return eyep;
}

//draw(shift(-2,0)*candle());

draw((2,0)--(2,1)--(4,1)--(4,0)--cycle);
dot((2,.5));
//label("small hole",(2,.5),W);

draw((-2,1)--(4,.25),dashed);
draw((-2,0)--(4,.78),dashed);