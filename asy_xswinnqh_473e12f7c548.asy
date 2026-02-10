size(16 cm);

real r = 1;//eye radius
real H = 1;//height of E;
real d = 5;//distance from eye to E

real fov = 40; //angle subtended by fovea. should realistically be 4 deg, but that's too small to see
real M = 2r/d; //magnitude of magnification of E

//positions
pair pupil = (0,0);
pair E_pos = (-d,0);
pair eye = (r,0);

pair E_top = E_pos + H*(0,.5);
pair E_bot = E_pos - H*(0,.5);
pair E_img = eye + (r,0);
pair E_img_top = E_img + H*M*(0,.5);
pair E_img_bot = E_img - H*M*(0,.5);

//define E centered at (0,0)
path[] E_form = shift(-.5,-.5)*(box((0,0),(1,.2)) ^^ box((.8,.2),(1,.4)) ^^ box((.2,.2),(.4,.8)) ^^ box((.4,.4),(.6,.6)) ^^ box((0,.8),(1,1)) ^^ box((.8,.6),(1,.8)));

//draw
fill(shift(E_pos)*E_form); //E
draw(shift(eye)*scale(r)*unitcircle); //eye
fill(shift(pupil)*xscale(.2)*scale(.3)*unitcircle); //pupil
draw(arc(eye,r, -fov/2, fov/2), red); //fovea
fill(shift(E_img)*rotate(180)*scale(M)*E_form);//image of E
draw(E_top--pupil--E_bot, blue+dashed);
draw(E_img_top--pupil--E_img_bot, deepgreen+dashed);


//measurements
//E height
draw(shift(-.7*H,0)*(E_bot--E_top),brown+dotted+1bp,Arrows(2mm));
label("$4.4 \;\mathrm{mm}$",E_bot/2 + E_top/2 + (-.7*H,0), UnFill); 

//eye depth
draw(shift(0,-r*1.2)*shift(eye)*((-r,0)--(r,0)),brown+dotted+1bp,Arrows(2mm));
label("$23 \;\mathrm{mm}$",eye + (0,-r*1.2), UnFill); 

//labels
//label("$h$",E_img_top + (.5*H*M,0),E);
label("fovea", r*dir(-fov/2) + eye, E, red);
label("pupil", pupil + (0,.3),NW);