unitsize(4cm);

real theta = 27; //angle between wire and wall, given in problem
real L = 1; //length of beam

pair hinge = (0,L);
pair wire_top = hinge + (0,L);

real phi = 2*theta; //angle between beam and wall
pair beam_vector = L*(Sin(phi),-Cos(phi));
pair beam_bottom = hinge + beam_vector;

draw(hinge--beam_bottom, linewidth(2pt)); //this is the beam
label("$L$",(hinge+beam_bottom)/2,SW);

draw(wire_top--beam_bottom); //this is the wire

pair wall_bottom = (0,.3);
pair wall_top = 1.1*wire_top;
real wall_depth = .1;
pair wall_depth_vec = (-wall_depth,0);

fill(wall_bottom--wall_top--(wall_top + wall_depth_vec)--(wall_bottom + wall_depth_vec)--cycle, lightgray);

draw(arc(wire_top,L*.3,-90,-90+theta));
label("$\theta$",wire_top + .37L*(Sin(theta/2),-Cos(theta/2)));

draw(arc(beam_bottom,.3L,90+phi,90+theta));
label("$\theta$",beam_bottom + 0.37L*(-Sin(3*theta/2),Cos(3*theta/2)));