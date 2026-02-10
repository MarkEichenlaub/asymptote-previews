//TeXeR source: https://artofproblemsolving.com/texer/nvgictjy

draw((-1,2)--(-1,0)--(1,0)--(1,2));

import graph;

real lambda = 2;

real wav_odd(real x){
return sin(2*pi*x/lambda);
}

real wav_even(real x){
return cos(2*pi*x/lambda);
}

draw(graph(wav_odd,-1,1),blue);

label("$-\pi r$",(-1,0),S);
label("$\pi r$",(1,0),S);