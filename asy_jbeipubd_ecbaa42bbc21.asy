unitsize(3cm);
draw(box((0,0),(2,1)));
label(rotate(90)*"$a_y \quad (\mathrm{m/s^2})$",(-.5,.5));
label("$t \quad (\mathrm{s})$",(1,-.4));

for(int i = 0; i<5; ++i){
draw((0,i/4)--(.05,i/4));
draw((2,i/4)--(1.95,i/4));
label(string(-.5 + i/4),(0,i/4),W);
}

for(int i = 0; i<16; ++i){
real x = 2/15*i;
draw((x,0)--(x,.05));
draw((x,1)--(x,0.95));
if (i/2 == Floor(i/2)){
label(string(i),(x,0),S);
}
}

draw((0,.5)--(2,.5), dashed);

draw((0,1)--(2.5*2/15,1)--(2.5*2/15,.5)--(11.5*2/15,.5)--(11.5*2/15,0)--(14*2/15,0)--(14*2/15,.5)--(2,.5), red+linewidth(1pt));