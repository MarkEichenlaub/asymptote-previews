unitsize(1cm);
dot((20/9,0));
draw((0,-1)..(-.1,0)..(0,1));
draw((0,-1)..(.1,0)..(0,1));
label("focus ($f$)",(20/9,0),SE);

for(int i = -3; i<=3; ++i){
   draw((-4,i/3)--(0,i/3)--(20/9,0),dashed);}