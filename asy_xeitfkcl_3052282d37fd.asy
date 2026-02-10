unitsize(5cm);

real theta = 2;

filldraw(dir(90-theta)--arc((0,0),1,90-theta,-90+theta)--cycle, lightgray);
filldraw(dir(90+theta)--arc((0,0),1,90+theta,270-theta)--cycle, lightgray);