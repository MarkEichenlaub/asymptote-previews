unitsize(5cm);

  draw((0,-.3)--(0,.7), linewidth(2pt));

  pen brwn = RGB(166, 123, 7);

  real theta = 90;

  draw((0,0)--dir(90-theta), brwn+linewidth(1.5pt));

  draw(arc((0,0),1.1,90-theta+10,90-theta-10), Arrows);
dot((0,0),6+cyan);
label(rotate(90)*"pivot",(0,0),W,cyan);