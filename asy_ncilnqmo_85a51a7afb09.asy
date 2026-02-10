unitsize(2cm);

picture brush(){

picture b;
fill(b,box((-.1,0),(.1,.6)));
fill(b,box((-.3,.6),(.3,1.2)));

for(int k = 0; k<6; ++k){
draw(b,(k/6*.6-.25,1.2)--(k/6*.6-.25,.7), white+linewidth(.5 pt) );
}

return b;
}

draw(xscale(.3)*unitcircle);
draw((0,1)--(-1,1));
draw((0,-1)--(-1,-1));
draw(shift(-1,0)*xscale(.3)*arc((0,0),1,90,270));
label("A",(-.5,-1),S);
draw((0,0)--(1.5,0), arrow = Arrow(6));

draw(shift(3,0)*xscale(.3)*unitcircle);
draw((3,1)--(4,1));
draw((3,-1)--(4,-1));
draw(shift(4,0)*xscale(.3)*arc((0,0),1,-90,90));
label("$B$",(3.5,-1),S);

add(shift(-.5,1)*scale(.4)*brush());
add(shift(3.5,1)*scale(.4)*brush());