fill((0,.8)--(1,.8)--(1,.2)--(2.8,.2)--(2.8,.8)--(3,.8)--(3,0)--(0,0)--cycle, lightblue);

draw((0,1)--(0,0)--(3,0)--(3,1));
draw((1,1)--(1,.2)--(2.8,.2)--(2.8,1));

draw((0,.8)--(1,.8),linewidth(2pt));
draw((2.8,.8)--(3,.8), linewidth(2pt));

draw(shift(.5,0.88)*scale(.06)*unitcircle);
label("$m_A$",(.5,.94),N);
draw(shift(2.9,.88)*scale(0.06)*unitcircle);
label("$m_B$",(2.9,.94),N);