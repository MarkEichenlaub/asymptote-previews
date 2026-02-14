unitsize(1cm);

int num_positions = 12;
real max_theta = .6;
real delta_theta =max_theta*4/num_positions;
int ncol = 6;
real space = 2;

for( int pos = 0; pos<num_positions; ++pos){

    real theta = max_theta*sin(2*pi*pos/num_positions);
    pair offset = (space,0)*(pos%ncol) + (0,-space)*quotient(pos,ncol);
    pair position = (sin(theta),-cos(theta)) + offset;
    draw(offset--position);
    dot(position);

    draw(offset--offset-(0,1),dotted);

    real at = -theta;
    real ar = max_theta^2 - theta^2;
//    draw(position--position-(0,g);
    pair a = at*( cos(theta),sin(theta) ) + ar*( sin(theta),cos(theta) );
    draw(position--(position + a),arrow = Arrow(6),red);




}