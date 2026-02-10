unitsize(2cm);
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

path eye(){
path eyep = (1,.5)--(0,0)--(1,-.5)--arc((0,0),.7,-atan(.5)*180/pi,atan(.5)*180/pi);
return eyep;
}

// Left lens goes from (0, -0.5) to (0, 0.5)
// Right lens goes from (3, -0.5) to (3, 0.5)

draw(lens(1,4));
draw(shift(3,0)*lens(1,3));
draw((0,-.5)--(3,-.5));
draw((0,.5)--(3,.5));
label("$L$",(1.5,-.5),S);
draw((0,0)--(-.7,0),dotted);
label("$l_1$",(-.35,0),S);
draw((3,0)--(4.4,0),dotted);
label("$l_2$",(3.7,0),S);