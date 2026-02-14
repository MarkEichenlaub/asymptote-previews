real r = 1;
  fill(shift(-5,0)*scale(r)*unitcircle);
  draw((-5+r,0)--(-5+r+2,0), arrow = Arrow(6));
  label("$v$",(-5+r+1),N);
  label("$m$",(-5,r),N);
  
  fill(scale(0.05)*unitcircle);
  label("$M$",(0,0.05),N);