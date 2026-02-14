for(int i =0; i<5; ++i){
    draw(shift(i,0)*scale(.5)*unitcircle);
}
draw(shift(-2,0)*scale(.5)*unitcircle);
draw((-2,0)--(-1,0),arrow = Arrow(6));
label("$v$",(-1.5,0),NNE);