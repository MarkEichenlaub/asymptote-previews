unitsize(0.8cm);

//draw Mario
string mario = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/mario.eps", "width=1cm");
label(rotate(45)*reflect((0,0),(0,1))*mario, (1,1));

//ground and whatever's holding Mario up
draw((0,2)--(0,0)--(12,0), linewidth(2pt));

//path of light
pair eyes = (.9,1.6);
pair center = (5,4);
pair book_spot = interp(center,reflect((5,0),(5,5))*eyes,3.6/2.4);

draw(book_spot--center--eyes,dashed+blue);

//books
path book = box((0,0),(1.5,.4));
filldraw(shift(4.25,.05)*book,lightgray);
filldraw(shift(7.25,.05)*book,lightgray);
filldraw(shift(10.25,.05)*book,lightgray);
label("book 1",(4.25 + 1.5/2,0),S);
label("book 2",(7.25 + 1.5/2,0),S);
label("book 3",(10.25 + 1.5/2,0),S);

//block holding up mirror
//filldraw(box((4.5,0),(5.5,4)), rgb(251/256, 84/256, 43/256)+linewidth(2));

//mirror
draw((3,4)--(7,4), linewidth(2pt));

//angle markings
pair left_ray = eyes-center;
real theta = degrees(atan(left_ray.x/left_ray.y));

draw(shift(center)*((0,0)--(0,-3)), dotted+red+linewidth(1.5pt));
draw(arc(center, .5, -90,-90-theta), red+linewidth(1.5pt));
draw(arc(center, .6, -90,-90+theta), red+linewidth(1.5pt));
draw(shift(center)*rotate(-theta/2)*((0,-.4)--(0,-.6)),red);
draw(shift(center)*rotate(theta/2)*((0,-.5)--(0,-.7)),red);

string laser = graphic("/var/www/cdn/school/crypt/00540-e12599cedadfdc40445dca22ddd227e6417975d2/files/03_script_laser_bounce.eps", "width = 8cm");
label(laser,(6,-5));
layer();

pair reflect = (4.95,-9);
real theta = 43;

draw(shift(reflect)*((0,0)--(0,4)), red+dotted+linewidth(1.5pt));
draw(arc(reflect, 1, 90,90-theta), red+linewidth(1.5pt));
draw(arc(reflect, 1.1, 90,90+theta), red+linewidth(1.5pt));
draw(shift(reflect)*rotate(-theta/3)*((0,.85)--(0,1.15)),red);
draw(shift(reflect)*rotate(-2*theta/3)*((0,.85)--(0,1.15)),red);
draw(shift(reflect)*rotate(theta/3)*((0,0.95)--(0,1.3)),red);
draw(shift(reflect)*rotate(2*theta/3)*((0,0.95)--(0,1.3)),red);