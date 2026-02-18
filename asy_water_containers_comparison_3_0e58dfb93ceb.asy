label("$2 \;\mathrm{gal}$",(.5,.5));
label("$3 \;\mathrm{gal}$",(2 + .5*.6^.5,.75*.6^.5));
fill((0,0)--(1,0)--(1.15,.75)--(-.15,.75)--cycle, lightblue);
fill(shift(2,0)*scale(.6^.5)*((0,0)--(1,0)--(1.3,1.5)--(-.3,1.5)--cycle), lightblue);
draw((0,0)--(1,0)--(1.3,1.5)--(-.3,1.5)--cycle);

draw(shift(2,0)*scale(.6^.5)*((0,0)--(1,0)--(1.3,1.5)--(-.3,1.5)--cycle));

label("$5 \;\mathrm{gal}$",(.5,0),S);

label("$3 \;\mathrm{gal}$",(2.4,0),S);