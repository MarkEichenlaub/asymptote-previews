draw((-1,2)--(-1,0)--(1,0)--(1,2));

import graph;

real lambda = 4/5;

real wav_odd(real x){
return sin(2*pi*x/lambda);
}

real wav_even(real x){
return cos(2*pi*x/lambda);
}

draw(graph(wav_even,-1,1),blue);

draw((1.04,0)--(2,0),blue);
draw((-2,0)--(-1.04,0),blue);