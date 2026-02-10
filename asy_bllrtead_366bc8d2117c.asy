unitsize(3cm);

//path of light
pair eyes = (.9,1.6);
pair center = (5,4);
pair book_spot = interp(center,reflect((5,0),(5,5))*eyes,3.6/2.4);

draw(interp(book_spot,center,.7)--center--interp(center,eyes,.5),dashed+blue);

//mirror
draw((4,4)--(6,4), linewidth(2pt));

//angle markings
pair left_ray = eyes-center;
real theta = degrees(atan(left_ray.x/left_ray.y));

draw(shift(center)*((0,0)--(0,-1.5)), dotted+red+linewidth(1.5pt));
draw(arc(center, .5, -90,-90-theta), red+linewidth(1.5pt));
draw(arc(center, .7, -90,-90+theta), red+linewidth(1.5pt));
draw(shift(center)*rotate(-theta/2)*((0,-.4)--(0,-.6)),red);
draw(shift(center)*rotate(theta/2)*((0,-.6)--(0,-.8)),red);

label("$\shortstack{angle of \\ incidence}$",shift(.1,0)*shift(center)*rotate(theta/2)*(0,-.8),S);
label("$\shortstack{angle of \\ reflection}$",shift(-.1,0)*shift(center)*rotate(-theta/2)*(0,-.6),S);