int coils = 10;

path x = sqrt(2)/2*(1,1)--sqrt(2)/2*(-1,-1)--arc((0,0),1,225,315)--sqrt(2)/2*(-1,1)--arc((0,0),1,135,-45)--arc((0,0),1,-45,-225);

draw(x);

for(int i = 0; i<coils; ++i){

draw(shift(2*i,0)*x);
draw(shift(2*i,4)*unitcircle);
dot((2*i,4));

}