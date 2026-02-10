//unitsize(2cm);

draw((0,-.5)--(0,.5));
draw((0,-.1)--(0,.1),white);

dot((0,.04));
dot((0,0));
label("$u$",(0,.02),W);

for(int i = -3; i<4; ++i){
draw((-.5,i/6)--(-.05,i/6),arrow=Arrow(6),orange);
draw((0,i/6)--(.34,i/6),arrow=Arrow(6),blue);
}