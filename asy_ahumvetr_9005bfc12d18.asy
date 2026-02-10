unitsize(2cm);
draw((0,0)--(sqrt(15),0)--(sqrt(15),1)--cycle);
label("$4$",(sqrt(15)/2,.5),NW);
label("$1$",(sqrt(15),.5),E);
label("$\sqrt{15}$",(sqrt(15)/2,0),S);
draw(arc((0,0),1,0,asin(.25)*180/pi));
label("$\theta$",dir(asin(.25)*90/pi)*1.2);