int posts = 5;

for(int i = 0; i < posts; ++i){
draw((i,0)--(i,1), linewidth(2pt) );
label(string(i+1),(i,0),S);
}
draw((0,.4)--(posts-1,.4));
draw((0,.8)--(posts-1,.8));
for(int j = 1; j < posts; ++j){
label(string(j),(j-.5,.8),N);}