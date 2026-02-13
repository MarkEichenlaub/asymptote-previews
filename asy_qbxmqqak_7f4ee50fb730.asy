import trembling;
size(6cm);
defaultpen(fontsize(10pt));

tremble tr = tremble(angle=5, random=3);
real cup_height = 1.4, cup_width = 1;
real water_height = 0.4, oil1_height = 0.65, oil2_height = 0.9;
real box_width = cup_width*0.45, box_height = 3*(oil1_height - water_height);
real eps = 0.15;

draw((0, cup_height)--(0, 0)--(cup_width, 0)--(cup_width, cup_height), linewidth(2));

filldraw(shift(cup_width/2, 2*water_height - oil1_height)*box((-box_width/2, 0), (box_width/2, box_height)), gray(0.7));

draw(tr.deform((0, water_height)--(cup_width, water_height)));
draw(tr.deform((0, oil1_height)--(cup_width, oil1_height)));

label("Before", (cup_width/2, cup_height + eps));

real shift = 1.8;
currentpicture = shift(-shift, 0)*currentpicture;

draw((0, cup_height)--(0, 0)--(cup_width, 0)--(cup_width, cup_height), linewidth(2));

filldraw(shift(cup_width/2, 0.5)*box((-box_width/2, 0), (box_width/2, box_height)), gray(0.7));

draw(tr.deform((0, water_height)--(cup_width, water_height)));
draw(tr.deform((0, oil2_height)--(cup_width, oil2_height)));

label("After", (cup_width/2, cup_height + eps));

label("Water", ((-shift+cup_width)/2, water_height/2));
label("Oil Layer", ((-shift+cup_width)/2, ((oil1_height + oil2_height)/2+water_height)/2));