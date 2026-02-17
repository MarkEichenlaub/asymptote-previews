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

//draw(shift(center)*scale(R)*((0,0)--(0,-1)),dotted);
//draw(shift(center)*scale(R)*rotate(phi)*((0,0)--(0,-.5)),dotted);

//draw("$\phi$",arc(center,.05,-90,-90+phi));

draw(contact--center, dashed+red);
real dphi = 10;
draw(contact--(rotate(dphi)*(center-contact)+contact), dashed+red);
draw("$\mathrm{d}\phi$",arc(contact,.17,90+theta,90+theta+dphi),red);

draw("$R \mathrm{d}\phi$",center--(rotate(dphi)*(center-contact)+contact),red);
draw(center-(.2,0)--center+(.2,0), dotted);

draw(shift(center)*rotate(theta)*((-.2,0)--(.2,0)),dotted);

dot(rotate(dphi)*(center-contact)+contact, red);

draw("$\theta$",arc(center,.15,180,180+theta));