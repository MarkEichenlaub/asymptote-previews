unitsize(0.1cm);

real L = 52;
real R = 35;

real r = 5;

//ball
filldraw(shift((0,r))*scale(r)*unitcircle, yellow);
label("ball",(0,r*2),N);

//mirrors
draw((-L,0)--(-L,50),linewidth(2pt));
label("left mirror",(-L,25),E);

draw((R,0)--(R,50),linewidth(2pt));
label("right mirror",(R,25),W);

//ground
fill(box((-110,0),(185,-15)),lightgray);

//reflection
filldraw(reflect((R,0),(R,1))*shift((0,r))*scale(r)*unitcircle, yellow);
label("reflection",(2*R,2*r),N);

//left reflection
filldraw(reflect((-L,0),(-L,1))*shift((0,r))*scale(r)*unitcircle, yellow);
label("\begin{tabular}{c} left \\ reflection \end{tabular}",(-2*L,2*r),N);

//reflection of reflection
filldraw(reflect((R,0),(R,1))*reflect((-L,0),(-L,1))*shift((0,r))*scale(r)*unitcircle, yellow  );
label("\begin{tabular}{c} reflection of \\ reflection \end{tabular}",(2*R+2*L,2*r),N);

//distances
draw((0,-3)--(R,-3),brown+dotted+1bp,Arrows(2mm));
label("$35\;\mathrm{cm}$",(R/2,-3), UnFill); 

draw((-2*L,-8)--(R,-8), brown+dotted+1bp,Arrows(2mm));
label("$139 \;\mathrm{cm}$",(-L,-8),UnFill);

draw((R,-8)--(2*R+2*L,-8), brown+dotted+1bp,Arrows(2mm));
label("$139 \;\mathrm{cm}$",(1.5*R+L,-8),UnFill);

//reflections of mirrors
draw((2*R+L,0)--(2*R+L,50),dotted+linewidth(2pt));
label("\begin{tabular}{c} reflection of \\ left mirror\end{tabular}",(2*R+L,25),W);