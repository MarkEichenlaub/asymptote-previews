//light bulb

picture bulb;
currentpicture = bulb;

pair A = (86,35);
pair B = (86,49);
pair C = (86,63);
pair D = (86,80);
pair E = (86,90);
pair F = (81,98);
pair G = (74,105);
pair H = (68,113);
pair I = (62,122);
pair J = (57,132);
pair K = (53,143);
pair L = (52,157);
pair M = (53,169);
pair N = (58,183);
pair O = (65,195);
pair P = (76,205);
pair Q = (89,212);
pair R = (105,216);
pair S = (121,216);
pair T = (136,213);
pair U = (148,206);
pair V = (159,195);
pair W = (167,183);
pair X = (172,167);
pair Y = (172,151);
pair Z = (170,137);
pair AA = (162,123);
pair AB = (153,111);
pair AC = (145,99);
pair AD = (139,91);
pair AE = (137,80);
pair AF = (137,63);
pair AG = (137,49);
pair AH = (137,35);
pair AI = (126,23);
pair AJ = (98,22);
path shape = A--B--C--D--E..F..G..H..I..J..K..L..M..N..O..P..Q..R..S..T..U..V..W..X..Y..Z..AA..AB..AC..AD..AE..AF..AG..AH..AI..AJ..cycle;

draw(shape);
draw(A--AH);
draw(B--AG);
draw(C--AF);
draw(D--AE);

//lines of light
pair AK = (51,120);
pair AL = (29,108);
pair AM = (40,156);
pair AN = (16,156);
pair AO = (50,191);
pair AP = (28,203);
pair AQ = (75,220);
pair AR = (63,239);
pair AS = (111,229);
pair AT = (111,252);
pair AU = (148,221);
pair AV = (160,239);
pair AW = (175,193);
pair AX = (194,205);
pair AY = (183,157);
pair AZ = (207,157);
pair BA = (173,121);
pair BB = (192,109);

real length = 2;

draw(shift(AK)*((0,0)--(AL-AK)*3),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(AM)*((0,0)--(AN-AM)*3*length),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(AO)*((0,0)--(AP-AO)*3*length),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(AQ)*((0,0)--(AR-AQ)*3*length),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(AS)*((0,0)--(AT-AS)*3*length),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(AU)*((0,0)--(AV-AU)*3*length),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(AW)*((0,0)--(AX-AW)*3*length),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(AY)*((0,0)--(AZ-AY)*3*length),   arrow = Arrow(6), lightolive+linewidth(2pt) );
draw(shift(BA)*((0,0)--(BB-BA)*3),   arrow = Arrow(6), lightolive+linewidth(2pt) );

//////////////////////////

picture scene;
currentpicture = scene;
unitsize(8cm);


//background
fill(box((-.2,-.2),(3,1.3)), gray);

path house = ((0,0)--(1,0)--(1,.7)--(.5,1)--(0,.7)--cycle);
path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;


filldraw(house, white+linewidth(2pt));
draw((1,.3)--(1,.6), linewidth(4pt)); //window


draw(shift(.6,0)*scale(.5)*person);

add(shift(.61,1.01)*rotate(180)*scale(.001)*bulb);


//tree

pair A = (0.442,0.052);
pair B = (0.485,0.046);
pair C = (0.530,0.046);
pair D = (0.559,0.056);
pair E = (0.540,0.120);
pair F = (0.528,0.183);
pair G = (0.528,0.279);
pair H = (0.559,0.353);
pair I = (0.602,0.398);
pair J = (0.629,0.407);
pair K = (0.649,0.361);
pair L = (0.693,0.350);
pair M = (0.715,0.363);
pair N = (0.744,0.340);
pair O = (0.777,0.361);
pair P = (0.812,0.350);
pair Q = (0.829,0.379);
pair R = (0.859,0.364);
pair S = (0.903,0.424);
pair T = (0.894,0.442);
pair U = (0.915,0.483);
pair V = (0.882,0.486);
pair W = (0.929,0.523);
pair X = (0.925,0.538);
pair Y = (0.917,0.568);
pair Z = (0.935,0.607);
pair AA = (0.894,0.623);
pair AB = (0.905,0.640);
pair AC = (0.901,0.673);
pair AD = (0.919,0.693);
pair AE = (0.901,0.704);
pair AF = (0.907,0.736);
pair AG = (0.896,0.753);
pair AH = (0.870,0.754);
pair AI = (0.849,0.764);
pair AJ = (0.855,0.778);
pair AK = (0.843,0.795);
pair AL = (0.824,0.797);
pair AM = (0.808,0.817);
pair AN = (0.816,0.830);
pair AO = (0.804,0.852);
pair AP = (0.789,0.860);
pair AQ = (0.761,0.873);
pair AR = (0.769,0.886);
pair AS = (0.750,0.893);
pair AT = (0.722,0.884);
pair AU = (0.717,0.904);
pair AV = (0.703,0.908);
pair AW = (0.676,0.904);
pair AX = (0.660,0.893);
pair AY = (0.654,0.893);
pair AZ = (0.649,0.915);
pair BA = (0.633,0.921);
pair BB = (0.610,0.919);
pair BC = (0.619,0.948);
pair BD = (0.582,0.960);
pair BE = (0.571,0.954);
pair BF = (0.557,0.967);
pair BG = (0.540,0.956);
pair BH = (0.522,0.923);
pair BI = (0.505,0.939);
pair BJ = (0.501,0.947);
pair BK = (0.473,0.934);
pair BL = (0.477,0.960);
pair BM = (0.450,0.971);
pair BN = (0.421,0.971);
pair BO = (0.405,0.954);
pair BP = (0.364,0.954);
pair BQ = (0.359,0.919);
pair BR = (0.357,0.904);
pair BS = (0.318,0.906);
pair BT = (0.275,0.889);
pair BU = (0.271,0.849);
pair BV = (0.238,0.838);
pair BW = (0.228,0.858);
pair BX = (0.189,0.834);
pair BY = (0.174,0.819);
pair BZ = (0.150,0.819);
pair CA = (0.145,0.801);
pair CB = (0.150,0.778);
pair CC = (0.166,0.773);
pair CD = (0.135,0.756);
pair CE = (0.108,0.734);
pair CF = (0.119,0.719);
pair CG = (0.090,0.692);
pair CH = (0.108,0.679);
pair CI = (0.104,0.653);
pair CJ = (0.086,0.625);
pair CK = (0.090,0.607);
pair CL = (0.119,0.601);
pair CM = (0.110,0.575);
pair CN = (0.137,0.553);
pair CO = (0.117,0.523);
pair CP = (0.104,0.497);
pair CQ = (0.131,0.464);
pair CR = (0.108,0.433);
pair CS = (0.131,0.416);
pair CT = (0.158,0.409);
pair CU = (0.150,0.375);
pair CV = (0.184,0.363);
pair CW = (0.201,0.342);
pair CX = (0.236,0.368);
pair CY = (0.248,0.351);
pair CZ = (0.273,0.359);
pair DA = (0.306,0.390);
pair DB = (0.361,0.394);
pair DC = (0.384,0.403);
pair DD = (0.429,0.383);
pair DE = (0.460,0.342);
pair DF = (0.475,0.290);
pair DG = (0.475,0.196);
pair DH = (0.462,0.093);

path shape = A..B..C..D..E..F..G..H..I..J..K..L..M..N..O..P..Q..R..S..T..U..V..W..X..Y..Z..AA..AB..AC..AD..AE..AF..AG..AH..AI..AJ..AK..AL..AM..AN..AO..AP..AQ..AR..AS..AT..AU..AV..AW..AX..AY..AZ..BA..BB..BC..BD..BE..BF..BG..BH..BI..BJ..BK..BL..BM..BN..BO..BP..BQ..BR..BS..BT..BU..BV..BW..BX..BY..BZ..CA..CB..CC..CD..CE..CF..CG..CH..CI..CJ..CK..CL..CM..CN..CO..CP..CQ..CR..CS..CT..CU..CV..CW..CX..CY..CZ..DA..DB..DC..DD..DE..DF..DG..DH..cycle;

filldraw(shift(1.5,0)*(shape),darkgray);