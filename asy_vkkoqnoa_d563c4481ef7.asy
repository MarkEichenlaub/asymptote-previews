//TeXeR source: https://artofproblemsolving.com/texer/vkkoqnoa

draw(unitcircle);
draw(shift((1,-2))*unitcircle);

draw((-1,0)--(-1,-2));
dot((-1,-2));
label("$m_1$",(-1,-2),S);

draw((1,0)--(1,-2));
draw((0,-2)--(0,-4));
draw((2,-2)--(2,-4));
dot((0,-4));
dot((2,-4));
label("$m_2$",(0,-4),S);
label("$m_3$",(2,-4),S);