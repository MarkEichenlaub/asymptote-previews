unitsize(5cm);

  draw((0,-.3)--(0,.7), linewidth(2pt));

  dot((0,0),6+black);

  pen brwn = RGB(166, 123, 7);

  real theta = 90;

  draw((0,0)--dir(90-theta), brwn+linewidth(1.5pt));

  //draw((.5,0)--(.5,-.5), arrow = Arrow(6), red);
  //label("$m \vec{g}$",(.5,-.5),S,red);

  draw((0,.75/2)--(.75,0));

  draw((.75,0)--interp((.75,0),(0,.75/2),.5/(.75/2)*2/3), arrow = Arrow(6), red+linewidth(2pt));
  label("$\vec{T}$",interp((.75,0),(0,.75/2),.25/(.75/2)*2/3), NE, red);

draw(arc((.75,0),.25,180,180-atan(1/2)*180/pi));
label("$\theta$",(.75,0)+dir(180-atan(1/2)*90/pi)*.32);

draw((0,0)--(.75,0), arrow = Arrow(6), deepgreen+linewidth(2pt));
label("$\vec{r}$",(.75/2,0),S,deepgreen);
dot((0,0),6+cyan);