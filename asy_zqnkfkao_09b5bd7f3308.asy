size(5cm);

real cup_w = 1, cup_h = 1.2, plate_h = 0.3, water_h = cup_h - 0.4;
filldraw(box((0, plate_h), (cup_w, water_h)), rgb(0.6, 0.85, 1)+white, rgb(0, 0.4, 0.8));
draw((0, cup_h)--(0, 0)^^(cup_w, 0)--(cup_w, cup_h));
draw((0, plate_h)--(cup_w, plate_h), linewidth(1.5));

draw((cup_w/2, plate_h - 0.4)--(cup_w/2, plate_h), Arrow(TeXHead), Margin);

draw(shift(.5,1.15)*((0,0)--(0,-.3)), arrow = Arrow(6));
label("$P_0$",(.5,1),E);

label("$h$",(1.025,.5),E);
draw((1.025,.3)--(1.025,.8),dashed);