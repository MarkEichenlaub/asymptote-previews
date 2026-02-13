size(8cm);
  
  fill(box((0,0),(1.5,1)), gray);
  
  draw(box((0,0),(3,1)), linewidth(2pt));
  draw((1.5,0)--(1.5,.2), linewidth(2pt));
  draw((1.5,.8)--(1.5,1), linewidth(2pt));
  draw((1.5,.2)--(1.5,.8), linewidth(.5pt));
  label("A",(.75,0),S);
  label("B",(2.25,0),S);
  
  path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  
  draw(shift(.75)*scale(.6)*person, blue);
  draw(shift(2.25)*scale(.6)*person, red);
  
  label("Can see into B", (.75,.8));
  label("Cannot see into A",(2.25,.8));
  
  draw((1,.35)--(1.48,.35),   arrow = Arrow(5) , blue+linewidth(1pt));
  draw((1.48,.25)--(1,.25),   arrow = Arrow(3) , blue+linewidth(.5pt));
  draw((1.52,.35)--(2,.35),   arrow = Arrow(3) , blue+linewidth(.5pt));
  
  draw((2,.65)--(1.52,.65),   arrow = Arrow(8) , red+linewidth(4pt));
  draw((1.48,.65)--(1,.65),   arrow = Arrow(6) , red+linewidth(2pt));
  draw((1.52,.55)--(2,.55),   arrow = Arrow(6) , red+linewidth(2pt));