unitsize(10cm);

real theta = 15;
real phi = 45;
real R = .25;

draw((0,0)--(1,0)--(1,Tan(theta))--(0,0));

pair contact = (1,Tan(theta))*.6;
pair center = shift(R*(-Sin(theta),Cos(theta)))*contact;

fill(shift(center)*scale(R)*unitcircle, lightgray);
draw(shift(center)*scale(R)*unitcircle);

dot(center);

fill(shift(R*.5*(Sin(phi),-Cos(phi)))*shift(center)*scale(R*.2)*unitcircle, gray);

draw("$\theta$",arc((0,0),.3,0,theta));

draw(shift(center)*scale(R)*((0,0)--(0,-1)),dotted);
draw(shift(center)*scale(R)*rotate(phi)*((0,0)--(0,-.5)),dotted);

draw("$\phi$",arc(center,.05,-90,-90+phi));

real l = R*(Cos(theta) - Sin(theta)*Cos(phi)/Sin(phi));

draw(shift(contact)*((0,0)--(0,l)),dashed);

dot(contact + (0,l));
label("$b$",(center + contact + (0,l))*.5,NE);

label("$R$",(center - (0,.1)),W);

real horizontal = R*Sin(theta);

draw(contact--(contact + (-horizontal,0)), red);
draw(shift(contact)*((0,l)--(-horizontal,l)), red);

//dot(shift(R*.5*(Sin(phi),-Cos(phi)))*shift(center)*(0,0),red);