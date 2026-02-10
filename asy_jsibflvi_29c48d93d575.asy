real theta = 20;
pair end = dir(180-theta);

draw((0,0)--end);

draw(shift(end/2)*scale(.2)*rotate(-theta)*box((-.5,0),(.5,1)));

draw((0,0)--(-1,0));
draw(arc((0,0),.3,180,180-theta));
label("$\theta$",dir(180-theta/2)*.36);