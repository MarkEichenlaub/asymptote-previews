unitsize(5cm);
filldraw(box((0,0),(1,.5)), lightgray);
draw((-.3,0)--(1.5,0), linewidth(2pt));
draw((-.3,0)--(-.6,0), arrow = Arrow(6),red);
label("$-v$",(-.45,0),S,red);

for(int i = 0; i<7; ++i){
pair c = (1.5*i/6,.8);
draw(shift(c)*((0,0)--(-.3,-.2)), arrow = Arrow(6), red);
}
draw((0,.8)--(-.3,.8)--(-.3,.6), dotted+red);
label("$-v$",(-.15,.8),N, red);
label("train",(.5,.25));
label("ground",(1.25,0),S);
label("snow",(.5,.8),N);