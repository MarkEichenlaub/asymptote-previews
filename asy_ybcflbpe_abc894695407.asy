real shadow_ratio = 1.5;
real table_height = 75;
real table_width = 100;
real scene_width = 220;

real light_height = shadow_ratio*table_height/(shadow_ratio-1);
real light_x = 35;

pair light = (light_x, light_height);
pair table_left = (-table_width/2,table_height);
pair table_right = (table_width/2,table_height);

pair shadow_left = light + (table_left - light)*light_height/(light_height - table_height);
pair shadow_right = light + (table_right - light)*light_height/(light_height - table_height);

draw((-scene_width/2,0)--(scene_width/2,0), lightgray);

pen table = brown+2pt;

draw((0,0)--(0,table_height), table);
draw(table_left--table_right,table);


dot(light);

draw(light--shadow_left, dotted);
draw(light--shadow_right, dotted);

draw(shadow_left--shadow_right);

real mx = -30;

draw((mx,0)--(mx,table_height),brown+dotted+1bp,Arrows(2mm));
label("$75 \;\mathrm{cm}$",(mx,table_height/2), UnFill); 

real dy = 10;
draw(shift((0,dy))*(table_left--table_right),brown+dotted+1bp,Arrows(2mm));
label("$x$",(0,table_height + dy), UnFill); 

real dy = -20;
draw(shift((0,dy))*(shadow_left--shadow_right),brown+dotted+1bp,Arrows(2mm));
label("$1.5x$",shift((0,dy))*((shadow_left + shadow_right)/2), UnFill);