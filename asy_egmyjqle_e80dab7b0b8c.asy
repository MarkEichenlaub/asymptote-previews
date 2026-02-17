unitsize(1cm);

path candle(real width, real height, real r){
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

draw(candle(.4,1,1));
draw(shift(4,0)*lens(3,6));

//draw(shift(12,0)*rotate(180)*scale(2)*candle(.4,1,1));

draw((3.7,0)--(3.7,2),linewidth(2pt));