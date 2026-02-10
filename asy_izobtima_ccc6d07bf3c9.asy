size(8cm);

fill((-4.5,0)--(-3,0)--arc((0,1),3,-160.5,-19.5)--(4,0)--(4,-3.5)--(-4.5,-3.5)--cycle, lightblue);

draw((-3,1)--(3,1));
draw(arc((0,1),3,0,-180));
draw((0,1)--(0,3));
fill((0,2)--(-1,2)--(0,3)--cycle);
draw("$v$",(-3,1.2)--(-4,1.2), arrow = Arrow(6));

draw((-2,.7)--(-2,-1)--(2,-1)--(2,.7)--cycle, dotted);

draw(shift(-1.5,-.9)*scale(.1)*unitcircle);
draw(shift(-.5,-.9)*scale(.1)*unitcircle);
filldraw((-1.6,-.8)--(-.4,-.8)--(-.4,-.2)--(-1.6,-.2)--cycle, brown);

draw("$v$",(-.3,-.5)--(.5,-.5), arrow = Arrow(6));

path spring(pair start, pair end){
    path resist = start--start;
    int zigs = 24;

    real direction = angle(end-start);

    pair zig_end = start;
    pair zig_start = zig_end;

    for (int i = 1; i <= zigs; ++i){
        int pm = -1;
        if(quotient(i,2) % 2 == 0){
         pm = 1;
            }
        real zig_length = length(end-start)/12;
        zig_end = zig_start + zig_length*(cos(direction+pm*pi/3),sin(direction+pm*pi/3));
        resist = resist--zig_end;
        zig_start = zig_end;
    }
    resist = resist--end;
    return resist;
}

draw(shift(-1,-.2)*xscale(4)*spring((0,0),(0,.3)));
filldraw(shift(-1,.2)*scale(.1)*unitcircle, deepgreen);
draw((-1.2,-.2)--(-1.2,.4), brown+linewidth(2pt));
draw((-.8,-.2)--(-.8,.4), brown+linewidth(2pt));