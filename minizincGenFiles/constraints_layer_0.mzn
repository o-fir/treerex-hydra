% Rule 1
constraint p_0_0_2=0;
constraint p_1_0_2=0;
constraint p_2_0_2=0;
constraint p_0_0_3=2;
constraint p_1_0_3=2;
constraint p_2_0_3=2;
constraint p_0_0_0=3;
constraint p_1_0_0=3;
constraint p_2_0_0=3;
constraint p_0_0_1=5;
constraint p_1_0_1=5;
constraint p_2_0_1=5;
constraint p_0_0_4=8;
constraint p_1_0_4=8;
constraint p_2_0_4=8;
constraint p_0_0_5=12;
constraint p_1_0_5=12;
constraint p_2_0_5=12;
constraint p_0_0_6=16;
constraint p_1_0_6=16;
constraint p_2_0_6=16;
% Rule 4
constraint p_0_2_3=7;
constraint p_1_12_3=7;
constraint p_2_12_3=7;
constraint p_0_2_4=11;
constraint p_1_12_4=11;
constraint p_2_12_4=11;
constraint p_0_2_5=15;
constraint p_1_12_5=15;
constraint p_2_12_5=15;
constraint p_0_2_6=19;
constraint p_1_12_6=19;
constraint p_2_12_6=19;
% Rule 5
% Rule 6
constraint c_0_0=-1 -> p_0_0_5=12/\p_0_0_6=16/\true;
constraint c_0_0=-2 -> p_0_0_5=15/\p_0_0_6=19/\true;
constraint c_0_0=-3 -> p_0_0_5=12/\p_0_0_6=16/\true;
constraint c_0_0=-4 -> p_0_0_5=15/\p_0_0_6=19/\true;
constraint c_0_0=-5 -> p_0_0_5=12/\p_0_0_6=16/\true;
constraint c_0_0=-6 -> p_0_0_5=15/\p_0_0_6=19/\true;
constraint c_0_0=-7 -> p_0_0_5=12/\p_0_0_6=16/\true;
constraint c_0_0=-8 -> p_0_0_5=15/\p_0_0_6=19/\true;
% Rule 6
constraint c_0_1=-9 -> p_0_1_3=2/\p_0_1_4=8/\true;
constraint c_0_1=-10 -> p_0_1_3=7/\p_0_1_4=11/\true;
constraint c_0_1=-11 -> p_0_1_3=2/\p_0_1_4=8/\true;
constraint c_0_1=-12 -> p_0_1_3=7/\p_0_1_4=11/\true;
constraint c_0_1=-13 -> p_0_1_3=2/\p_0_1_4=8/\true;
constraint c_0_1=-14 -> p_0_1_3=7/\p_0_1_4=11/\true;
constraint c_0_1=-15 -> p_0_1_3=2/\p_0_1_4=8/\true;
constraint c_0_1=-16 -> p_0_1_3=7/\p_0_1_4=11/\true;
% Rule 8
constraint (p_0_0_2=0/\p_0_1_2!=0)->c_0_0<0;
constraint (p_0_0_2!=0/\p_0_1_2=0)->c_0_0<0;

constraint (p_0_0_2=1/\p_0_1_2!=1)->c_0_0<0;
constraint (p_0_0_2!=1/\p_0_1_2=1)->c_0_0<0;

constraint (p_0_0_3=2/\p_0_1_3!=2)->c_0_0<0;
constraint (p_0_0_3!=2/\p_0_1_3=2)->c_0_0<0;

constraint (p_0_0_0=3/\p_0_1_0!=3)->c_0_0<0;
constraint (p_0_0_0!=3/\p_0_1_0=3)->c_0_0<0;

constraint (p_0_0_0=4/\p_0_1_0!=4)->c_0_0<0;
constraint (p_0_0_0!=4/\p_0_1_0=4)->c_0_0<0;

constraint (p_0_0_1=5/\p_0_1_1!=5)->c_0_0<0;
constraint (p_0_0_1!=5/\p_0_1_1=5)->c_0_0<0;

constraint (p_0_0_1=6/\p_0_1_1!=6)->c_0_0<0;
constraint (p_0_0_1!=6/\p_0_1_1=6)->c_0_0<0;

constraint (p_0_0_3=7/\p_0_1_3!=7)->c_0_0<0;
constraint (p_0_0_3!=7/\p_0_1_3=7)->c_0_0<0;

constraint (p_0_0_4=8/\p_0_1_4!=8)->c_0_0<0;
constraint (p_0_0_4!=8/\p_0_1_4=8)->c_0_0<0;

constraint (p_0_0_0=9/\p_0_1_0!=9)->c_0_0<0;
constraint (p_0_0_0!=9/\p_0_1_0=9)->c_0_0<0;

constraint (p_0_0_1=10/\p_0_1_1!=10)->c_0_0<0;
constraint (p_0_0_1!=10/\p_0_1_1=10)->c_0_0<0;

constraint (p_0_0_4=11/\p_0_1_4!=11)->c_0_0<0;
constraint (p_0_0_4!=11/\p_0_1_4=11)->c_0_0<0;

constraint (p_0_0_5=12/\p_0_1_5!=12)->c_0_0<0;
constraint (p_0_0_5!=12/\p_0_1_5=12)->c_0_0<0;

constraint (p_0_0_0=13/\p_0_1_0!=13)->c_0_0<0;
constraint (p_0_0_0!=13/\p_0_1_0=13)->c_0_0<0;

constraint (p_0_0_1=14/\p_0_1_1!=14)->c_0_0<0;
constraint (p_0_0_1!=14/\p_0_1_1=14)->c_0_0<0;

constraint (p_0_0_5=15/\p_0_1_5!=15)->c_0_0<0;
constraint (p_0_0_5!=15/\p_0_1_5=15)->c_0_0<0;

constraint (p_0_0_6=16/\p_0_1_6!=16)->c_0_0<0;
constraint (p_0_0_6!=16/\p_0_1_6=16)->c_0_0<0;

constraint (p_0_0_0=17/\p_0_1_0!=17)->c_0_0<0;
constraint (p_0_0_0!=17/\p_0_1_0=17)->c_0_0<0;

constraint (p_0_0_1=18/\p_0_1_1!=18)->c_0_0<0;
constraint (p_0_0_1!=18/\p_0_1_1=18)->c_0_0<0;

constraint (p_0_0_6=19/\p_0_1_6!=19)->c_0_0<0;
constraint (p_0_0_6!=19/\p_0_1_6=19)->c_0_0<0;

% Rule 8
constraint (p_0_1_2=0/\p_0_2_2!=0)->c_0_1<0;
constraint (p_0_1_2!=0/\p_0_2_2=0)->c_0_1<0;

constraint (p_0_1_2=1/\p_0_2_2!=1)->c_0_1<0;
constraint (p_0_1_2!=1/\p_0_2_2=1)->c_0_1<0;

constraint (p_0_1_3=2/\p_0_2_3!=2)->c_0_1<0;
constraint (p_0_1_3!=2/\p_0_2_3=2)->c_0_1<0;

constraint (p_0_1_0=3/\p_0_2_0!=3)->c_0_1<0;
constraint (p_0_1_0!=3/\p_0_2_0=3)->c_0_1<0;

constraint (p_0_1_0=4/\p_0_2_0!=4)->c_0_1<0;
constraint (p_0_1_0!=4/\p_0_2_0=4)->c_0_1<0;

constraint (p_0_1_1=5/\p_0_2_1!=5)->c_0_1<0;
constraint (p_0_1_1!=5/\p_0_2_1=5)->c_0_1<0;

constraint (p_0_1_1=6/\p_0_2_1!=6)->c_0_1<0;
constraint (p_0_1_1!=6/\p_0_2_1=6)->c_0_1<0;

constraint (p_0_1_3=7/\p_0_2_3!=7)->c_0_1<0;
constraint (p_0_1_3!=7/\p_0_2_3=7)->c_0_1<0;

constraint (p_0_1_4=8/\p_0_2_4!=8)->c_0_1<0;
constraint (p_0_1_4!=8/\p_0_2_4=8)->c_0_1<0;

constraint (p_0_1_0=9/\p_0_2_0!=9)->c_0_1<0;
constraint (p_0_1_0!=9/\p_0_2_0=9)->c_0_1<0;

constraint (p_0_1_1=10/\p_0_2_1!=10)->c_0_1<0;
constraint (p_0_1_1!=10/\p_0_2_1=10)->c_0_1<0;

constraint (p_0_1_4=11/\p_0_2_4!=11)->c_0_1<0;
constraint (p_0_1_4!=11/\p_0_2_4=11)->c_0_1<0;

constraint (p_0_1_5=12/\p_0_2_5!=12)->c_0_1<0;
constraint (p_0_1_5!=12/\p_0_2_5=12)->c_0_1<0;

constraint (p_0_1_0=13/\p_0_2_0!=13)->c_0_1<0;
constraint (p_0_1_0!=13/\p_0_2_0=13)->c_0_1<0;

constraint (p_0_1_1=14/\p_0_2_1!=14)->c_0_1<0;
constraint (p_0_1_1!=14/\p_0_2_1=14)->c_0_1<0;

constraint (p_0_1_5=15/\p_0_2_5!=15)->c_0_1<0;
constraint (p_0_1_5!=15/\p_0_2_5=15)->c_0_1<0;

constraint (p_0_1_6=16/\p_0_2_6!=16)->c_0_1<0;
constraint (p_0_1_6!=16/\p_0_2_6=16)->c_0_1<0;

constraint (p_0_1_0=17/\p_0_2_0!=17)->c_0_1<0;
constraint (p_0_1_0!=17/\p_0_2_0=17)->c_0_1<0;

constraint (p_0_1_1=18/\p_0_2_1!=18)->c_0_1<0;
constraint (p_0_1_1!=18/\p_0_2_1=18)->c_0_1<0;

constraint (p_0_1_6=19/\p_0_2_6!=19)->c_0_1<0;
constraint (p_0_1_6!=19/\p_0_2_6=19)->c_0_1<0;

% Rule 10
constraint p_0_0_0=p_1_0_0;
constraint p_0_0_1=p_1_0_1;
constraint p_0_0_2=p_1_0_2;
constraint p_0_0_3=p_1_0_3;
constraint p_0_0_4=p_1_0_4;
constraint p_0_0_5=p_1_0_5;
constraint p_0_0_6=p_1_0_6;
constraint p_0_1_0=p_1_6_0;
constraint p_0_1_1=p_1_6_1;
constraint p_0_1_2=p_1_6_2;
constraint p_0_1_3=p_1_6_3;
constraint p_0_1_4=p_1_6_4;
constraint p_0_1_5=p_1_6_5;
constraint p_0_1_6=p_1_6_6;
constraint p_0_2_0=p_1_12_0;
constraint p_0_2_1=p_1_12_1;
constraint p_0_2_2=p_1_12_2;
constraint p_0_2_3=p_1_12_3;
constraint p_0_2_4=p_1_12_4;
constraint p_0_2_5=p_1_12_5;
constraint p_0_2_6=p_1_12_6;
% Rule 11
constraint c_0_0>=0 -> c_0_0==c_1_0;
constraint c_0_1>=0 -> c_0_1==c_1_6;
constraint c_0_2>=0 -> c_0_2==c_1_12;
constraint c_0_0=-1 -> c_1_0=-17\/c_1_0=-18\/false;
constraint c_0_0=-1 -> c_1_1=17;
constraint c_0_0=-1 -> c_1_2=13;
constraint c_0_0=-1 -> c_1_3=2;
constraint c_0_0=-1 -> c_1_4=35;
constraint c_0_0=-1 -> c_1_5=31;
constraint c_0_0=-2 -> c_1_0=-19\/c_1_0=-20\/false;
constraint c_0_0=-2 -> c_1_1=19;
constraint c_0_0=-2 -> c_1_2=15;
constraint c_0_0=-2 -> c_1_3=4;
constraint c_0_0=-2 -> c_1_4=35;
constraint c_0_0=-2 -> c_1_5=31;
constraint c_0_0=-3 -> c_1_0=-17\/c_1_0=-18\/false;
constraint c_0_0=-3 -> c_1_1=17;
constraint c_0_0=-3 -> c_1_2=14;
constraint c_0_0=-3 -> c_1_3=2;
constraint c_0_0=-3 -> c_1_4=35;
constraint c_0_0=-3 -> c_1_5=32;
constraint c_0_0=-4 -> c_1_0=-19\/c_1_0=-20\/false;
constraint c_0_0=-4 -> c_1_1=19;
constraint c_0_0=-4 -> c_1_2=16;
constraint c_0_0=-4 -> c_1_3=4;
constraint c_0_0=-4 -> c_1_4=35;
constraint c_0_0=-4 -> c_1_5=32;
constraint c_0_0=-5 -> c_1_0=-17\/c_1_0=-18\/false;
constraint c_0_0=-5 -> c_1_1=18;
constraint c_0_0=-5 -> c_1_2=13;
constraint c_0_0=-5 -> c_1_3=2;
constraint c_0_0=-5 -> c_1_4=36;
constraint c_0_0=-5 -> c_1_5=31;
constraint c_0_0=-6 -> c_1_0=-19\/c_1_0=-20\/false;
constraint c_0_0=-6 -> c_1_1=20;
constraint c_0_0=-6 -> c_1_2=15;
constraint c_0_0=-6 -> c_1_3=4;
constraint c_0_0=-6 -> c_1_4=36;
constraint c_0_0=-6 -> c_1_5=31;
constraint c_0_0=-7 -> c_1_0=-17\/c_1_0=-18\/false;
constraint c_0_0=-7 -> c_1_1=18;
constraint c_0_0=-7 -> c_1_2=14;
constraint c_0_0=-7 -> c_1_3=2;
constraint c_0_0=-7 -> c_1_4=36;
constraint c_0_0=-7 -> c_1_5=32;
constraint c_0_0=-8 -> c_1_0=-19\/c_1_0=-20\/false;
constraint c_0_0=-8 -> c_1_1=20;
constraint c_0_0=-8 -> c_1_2=16;
constraint c_0_0=-8 -> c_1_3=4;
constraint c_0_0=-8 -> c_1_4=36;
constraint c_0_0=-8 -> c_1_5=32;
constraint c_0_1=-9 -> c_1_6=-17\/c_1_6=-18\/false;
constraint c_0_1=-9 -> c_1_7=9;
constraint c_0_1=-9 -> c_1_8=5;
constraint c_0_1=-9 -> c_1_9=2;
constraint c_0_1=-9 -> c_1_10=27;
constraint c_0_1=-9 -> c_1_11=23;
constraint c_0_1=-10 -> c_1_6=-19\/c_1_6=-20\/false;
constraint c_0_1=-10 -> c_1_7=11;
constraint c_0_1=-10 -> c_1_8=7;
constraint c_0_1=-10 -> c_1_9=4;
constraint c_0_1=-10 -> c_1_10=27;
constraint c_0_1=-10 -> c_1_11=23;
constraint c_0_1=-11 -> c_1_6=-17\/c_1_6=-18\/false;
constraint c_0_1=-11 -> c_1_7=9;
constraint c_0_1=-11 -> c_1_8=6;
constraint c_0_1=-11 -> c_1_9=2;
constraint c_0_1=-11 -> c_1_10=27;
constraint c_0_1=-11 -> c_1_11=24;
constraint c_0_1=-12 -> c_1_6=-19\/c_1_6=-20\/false;
constraint c_0_1=-12 -> c_1_7=11;
constraint c_0_1=-12 -> c_1_8=8;
constraint c_0_1=-12 -> c_1_9=4;
constraint c_0_1=-12 -> c_1_10=27;
constraint c_0_1=-12 -> c_1_11=24;
constraint c_0_1=-13 -> c_1_6=-17\/c_1_6=-18\/false;
constraint c_0_1=-13 -> c_1_7=10;
constraint c_0_1=-13 -> c_1_8=5;
constraint c_0_1=-13 -> c_1_9=2;
constraint c_0_1=-13 -> c_1_10=28;
constraint c_0_1=-13 -> c_1_11=23;
constraint c_0_1=-14 -> c_1_6=-19\/c_1_6=-20\/false;
constraint c_0_1=-14 -> c_1_7=12;
constraint c_0_1=-14 -> c_1_8=7;
constraint c_0_1=-14 -> c_1_9=4;
constraint c_0_1=-14 -> c_1_10=28;
constraint c_0_1=-14 -> c_1_11=23;
constraint c_0_1=-15 -> c_1_6=-17\/c_1_6=-18\/false;
constraint c_0_1=-15 -> c_1_7=10;
constraint c_0_1=-15 -> c_1_8=6;
constraint c_0_1=-15 -> c_1_9=2;
constraint c_0_1=-15 -> c_1_10=28;
constraint c_0_1=-15 -> c_1_11=24;
constraint c_0_1=-16 -> c_1_6=-19\/c_1_6=-20\/false;
constraint c_0_1=-16 -> c_1_7=12;
constraint c_0_1=-16 -> c_1_8=8;
constraint c_0_1=-16 -> c_1_9=4;
constraint c_0_1=-16 -> c_1_10=28;
constraint c_0_1=-16 -> c_1_11=24;
