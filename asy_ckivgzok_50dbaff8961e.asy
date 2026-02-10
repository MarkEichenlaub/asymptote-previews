unitsize(0.35cm);

path flashlight = (-.8,0)--(.8,0)--(.8,3.5)--(1.5,4.5)--(-1.5,4.5)--(-.8,3.5)--cycle;
pair F = (0,4.5);

draw(flashlight);

draw((-6,15)--(-.5,15), linewidth(2pt));
draw((.5,15)--(6,15), linewidth(2pt));

draw((-6,25)--(6,25), linewidth(2pt));

for(int i = -3; i<4; ++i){

pair end = ((15 - F.y)*tan(i/5),15);
if(end.x == 0){
end = (0,25);
}
if(abs(end.x) > 6){
end = ((25-F.y)*tan(i/5),25);
}

draw(F--end, olive);
}