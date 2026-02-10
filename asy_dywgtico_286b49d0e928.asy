unitsize(5cm);

  draw((0,-.3)--(0,.7), linewidth(2pt));

  pen brwn = RGB(166, 123, 7);

  real theta = 90;

  draw((0,0)--dir(90-theta), brwn+linewidth(1.5pt));

  draw((.5,0)--(.5,-.5), arrow = Arrow(6), red+linewidth(2pt));
  label("$m \vec{g}$",(.5,-.5),S,red);
dot((0,0),6+cyan);