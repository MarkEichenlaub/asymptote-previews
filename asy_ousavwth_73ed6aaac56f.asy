unitsize(0.5cm);

real offset = -0.05;

int half_oscillations = 5;

import graph;

real sinusoidal(real x){
return cos(x);
}

path half_cosine = graph(sinusoidal, pi,2*pi);
path other_half = graph(sinusoidal,2*pi,3*pi);

for(int i = 0; i< half_oscillations; ++i){

draw(shift(2*i*pi,offset)*yscale((1+(4*i+1)*offset))*half_cosine);
draw(shift(2*i*pi,-offset)*yscale((1+(4*i+3)*offset))*other_half);

//draw((4,0)--(10,0),dotted);

draw((pi,0)--(35,0));
label("$t$",(35,0),S);
draw((pi,-1)--(pi,1));
label("$x$",(pi,1),W);

}