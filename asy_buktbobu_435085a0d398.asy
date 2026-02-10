unitsize(3cm);

fill((3*2/15,.5)--(3*2/15,.76){1,.3}..(.5,.8){1,0}..(6*2/15,.78)--(6*2/15,.5)--cycle, lightgreen);
//label("$(+)$",(.7,.65));
//fill((1.3,.5){1,-1.6}..(1.5,.2)..{1,3}(1.9,.5)--cycle, palered);
//label("$(-)$",(1.6,.35));
//fill((1.9,.5){1,2.8}..{1,3}(2,.7)--(2,.5)--cycle, lightgreen);

for(int i = 1; i<8; ++i){
draw((0,i/8)--(2,i/8),lightgray);
}
for(int i = 1; i<15; ++i){
draw((i*2/15,0)--(i*2/15,1),lightgray);
}

draw(box((0,0),(2,1)));
label(rotate(90)*"$a_y \quad (\mathrm{m/s^2})$",(-.5,.5));
label("$t \quad (\mathrm{s})$",(1,-.3));

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

draw((0,.6){1,1}..(.5,.8)..(1.3,.5)..(1.5,.2)..{1,3}(2,.7), red+linewidth(1.5pt));