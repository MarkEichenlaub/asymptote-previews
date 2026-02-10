unitsize(1cm);
  draw((0,0)--(1,0)--(1,.5)--(0,.5)--cycle);
  draw((1,0)--(3,1));
  draw((0,.5)--(2,1.5));
  draw((1,.5)--(3,1.5));
  draw((3,1)--(3,1.5)--(2,1.5));

  draw((4,0)--(4.5,0)--(4.5,1)--(4,1)--cycle);
  draw((4.5,0)--(6.5,1)--(6.5,2)--(6,2));
  draw((4.5,1)--(6.5,2));
  draw((4,1)--(6,2));

  draw((1.5,2.5)--(1.5,1), arrow = Arrow(6),red);
  draw((5.25,3)--(5.25,1.5), arrow = Arrow(6),red);

  label("load",(1.5,2.5),N,red);
  label("load",(5.25,3),N,red);

  draw((-1,.1)--(-.02,.1), linewidth(2pt));
  draw((1.22,.1)--(3.98,.1), linewidth(2pt));
  draw((4.72,.1)--(6,.1), linewidth(2pt));

  draw((-.5,.9)--(.78,.9), linewidth(2pt));
  draw((2.82,.9)--(3.98,.9), linewidth(2pt));
  draw((6.33,.9)--(7.5,.9), linewidth(2pt));

  label("horizontal beam", (0,-1), E);
  label("vertical beam", (4,-1),E);