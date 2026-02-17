import trembling;
size(7cm);
defaultpen(fontsize(10pt));

tremble tr = tremble(angle=3, random=3);
real cup_h = 1.0, cup_w = 0.8;
real m_h = 0.3, w_h = 0.65;
real box_w = cup_w*0.55, box_h = 0.35;
real eps = 0.08;

draw((0, cup_h)--(0, 0)--(cup_w, 0)--(cup_w, cup_h), linewidth(2));
filldraw(shift(cup_w/2, 0.15)*box((-box_w/2, 0), (box_w/2, box_h)), gray(0.7));
draw(tr.deform((0, m_h)--(cup_w, m_h)));

//draw("$h$", reverse(shift(-eps, 0.15)*((0, 0)--(0, box_h))), Bars(5));
draw("$\alpha h$", reverse(shift(-eps, 0.15)*((0, 0)--(0, m_h - 0.15))), Bars(3));

currentpicture = shift(-1.3, 0)*currentpicture;

draw((0, cup_h)--(0, 0)--(cup_w, 0)--(cup_w, cup_h), linewidth(2));
filldraw(shift(cup_w/2, 0.2)*box((-box_w/2, 0), (box_w/2, box_h)), gray(0.7));
draw(tr.deform((0, m_h)--(cup_w, m_h)));
draw(tr.deform((0, w_h)--(cup_w, w_h)));

draw("$\beta h$", reverse(shift(-eps, 0.2)*((0, 0)--(0, m_h - 0.2))), Bars(3));
draw("$h$", shift(cup_w+eps, 0.2)*((0, 0)--(0, box_h)), Bars(3));