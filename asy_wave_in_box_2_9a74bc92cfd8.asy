draw((-1,2)--(-1,0)--(1,0)--(1,2));

import graph;

real lambda = .4;

real wav_odd(real x){
return sin(x/lambda);
}

real wav_even(real x){
return cos(x/lambda);
}

draw(graph(wav_odd,-1,1),blue);

draw((1.04,0)--(2,0),blue);
draw((-2,0)--(-1.04,0),blue);