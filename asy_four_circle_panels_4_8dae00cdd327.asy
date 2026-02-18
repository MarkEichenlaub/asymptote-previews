// Four diagrams in one Asymptote figure (a–d), arranged horizontally.

size(200);

pen[] pollColors = {
  rgb(145/255, 39/255, 37/255),    // a: Dark Red
  rgb(61/255, 92/255, 100/255),    // b: Slate Teal
  rgb(65/255, 98/255, 22/255),     // c: Olive Green
  rgb(148/255, 70/255, 24/255),    // d: Brown/Bronze
  rgb(54/255, 55/255, 145/255),    // e: Indigo Blue
  rgb(101/255, 47/255, 136/255),   // f: Purple
  rgb(145/255, 39/255, 143/255),   // g: Magenta
  rgb(118/255, 13/255, 76/255),    // h: Deep Burgundy
  rgb(99/255, 100/255, 102/255)    // i: Grey
};

real dx = 18; // horizontal spacing between panels

void panel(pair O, bool lower, pen leftColor, pen rightColor, string lab, pen labelColor){
  real yMin = lower ? -8 : -4;
  real yMax = lower ?  4 :  8;

  // background box
  fill(shift(O)*box((-7,yMin),(7,yMax)), gray);

  // circles
  fill(shift(O)*shift(( 3,0))*unitcircle, rightColor);
  fill(shift(O)*shift((-3,0))*unitcircle, leftColor);

  real yBlue = (lower ? -1 : 1) * 6*sqrt(3)/2;
  fill(shift(O)*shift((0,yBlue))*unitcircle, blue);

  // label under the panel
  label(lab, O + (0, yMin), S, p = labelColor);
}

panel((0*dx,0), true,  red,   green, "\textsf{\bfseries a)}", pollColors[0]+fontsize(12pt));
panel((1*dx,0), true,  green, red,   "\textsf{\bfseries b)}", pollColors[1]+fontsize(12pt));
panel((2*dx,-4), false, green, red,   "\textsf{\bfseries c)}", pollColors[2]+fontsize(12pt));
panel((3*dx,-4), false, red,   green, "\textsf{\bfseries d)}", pollColors[3]+fontsize(12pt));