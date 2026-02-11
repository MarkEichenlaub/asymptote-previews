unitsize(1cm);
draw(shift(-4,0)*unitcircle);
draw(shift(8,0)*unitcircle);
//draw((-5,0)--(-8,0),arrow = Arrow(6));
draw((9,0)--(15,0),arrow = Arrow(6));
//label("$v$",(-7,0),S);
label("$2v$",(14,0),S);

void labeled_coil( pair start , pair end , Label text , pen draw_pen ){
	pair coil( real t ){ return (cos(t)/5+t/20,.3*sin(t)/2) ; }
	real left = -pi ;
	real right = 6pi ;

	pair desired_displacement = end-start ;
    pair displacement = coil(right)-coil(left) ;
    real angle = (
    	desired_displacement.x == 0 ?
        ( end.x>start.x ? 90 : -90 ) :
		degrees(atan(desired_displacement.y/desired_displacement.x))
	) ; ;
    path drawn_coil = shift(start-coil(left))* scale(length(desired_displacement)/length(displacement))* rotate(angle,coil(left))* graph( coil , left , right ) ;
    draw( start--drawn_coil--end , draw_pen ) ;

    label( text , (start+end)/2 , filltype=UnFill ) ;
}

labeled_coil( (-1,0) , (5,0) , "" , gray ) ;