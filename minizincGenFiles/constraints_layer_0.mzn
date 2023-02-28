% Rule 1
constraint p_0_0_2=2;
constraint p_1_0_2=2;
constraint p_2_0_2=2;
constraint p_0_0_3=4;
constraint p_1_0_3=4;
constraint p_2_0_3=4;
constraint p_0_0_0=9;
constraint p_1_0_0=9;
constraint p_2_0_0=9;
constraint p_0_0_1=10;
constraint p_1_0_1=10;
constraint p_2_0_1=10;
constraint p_0_0_4=13;
constraint p_1_0_4=13;
constraint p_2_0_4=13;
constraint p_0_0_5=14;
constraint p_1_0_5=14;
constraint p_2_0_5=14;
constraint p_0_0_6=15;
constraint p_1_0_6=15;
constraint p_2_0_6=15;
constraint p_0_0_7=16;
constraint p_1_0_7=16;
constraint p_2_0_7=16;
constraint p_0_0_8=17;
constraint p_1_0_8=17;
constraint p_2_0_8=17;
% Rule 4
% Rule 5
% Rule 6
constraint c_0_0=-1 -> true;
constraint c_0_0=-2 -> true;
constraint c_0_0=-3 -> true;
% Rule 6
constraint c_0_1=-4 -> true;
constraint c_0_1=-5 -> true;
constraint c_0_1=-6 -> true;
% Rule 8
constraint (p_0_0_2=0/\p_0_1_2!=0)->c_0_0<0;
constraint (p_0_0_2!=0/\p_0_1_2=0)->c_0_0<0;

constraint (p_0_0_2=1/\p_0_1_2!=1)->c_0_0<0;
constraint (p_0_0_2!=1/\p_0_1_2=1)->c_0_0<0;

constraint (p_0_0_2=2/\p_0_1_2!=2)->c_0_0<0;
constraint (p_0_0_2!=2/\p_0_1_2=2)->c_0_0<0;

constraint (p_0_0_0=3/\p_0_1_0!=3)->c_0_0<0;
constraint (p_0_0_0!=3/\p_0_1_0=3)->c_0_0<0;

constraint (p_0_0_3=4/\p_0_1_3!=4)->c_0_0<0;
constraint (p_0_0_3!=4/\p_0_1_3=4)->c_0_0<0;

constraint (p_0_0_0=5/\p_0_1_0!=5)->c_0_0<0;
constraint (p_0_0_0!=5/\p_0_1_0=5)->c_0_0<0;

constraint (p_0_0_3=6/\p_0_1_3!=6)->c_0_0<0;
constraint (p_0_0_3!=6/\p_0_1_3=6)->c_0_0<0;

constraint (p_0_0_1=7/\p_0_1_1!=7)->c_0_0<0;
constraint (p_0_0_1!=7/\p_0_1_1=7)->c_0_0<0;

constraint (p_0_0_1=8/\p_0_1_1!=8)->c_0_0<0;
constraint (p_0_0_1!=8/\p_0_1_1=8)->c_0_0<0;

constraint (p_0_0_0=9/\p_0_1_0!=9)->c_0_0<0;
constraint (p_0_0_0!=9/\p_0_1_0=9)->c_0_0<0;

constraint (p_0_0_1=10/\p_0_1_1!=10)->c_0_0<0;
constraint (p_0_0_1!=10/\p_0_1_1=10)->c_0_0<0;

constraint (p_0_0_0=11/\p_0_1_0!=11)->c_0_0<0;
constraint (p_0_0_0!=11/\p_0_1_0=11)->c_0_0<0;

constraint (p_0_0_1=12/\p_0_1_1!=12)->c_0_0<0;
constraint (p_0_0_1!=12/\p_0_1_1=12)->c_0_0<0;

constraint (p_0_0_4=13/\p_0_1_4!=13)->c_0_0<0;
constraint (p_0_0_4!=13/\p_0_1_4=13)->c_0_0<0;

constraint (p_0_0_5=14/\p_0_1_5!=14)->c_0_0<0;
constraint (p_0_0_5!=14/\p_0_1_5=14)->c_0_0<0;

constraint (p_0_0_6=15/\p_0_1_6!=15)->c_0_0<0;
constraint (p_0_0_6!=15/\p_0_1_6=15)->c_0_0<0;

constraint (p_0_0_7=16/\p_0_1_7!=16)->c_0_0<0;
constraint (p_0_0_7!=16/\p_0_1_7=16)->c_0_0<0;

constraint (p_0_0_8=17/\p_0_1_8!=17)->c_0_0<0;
constraint (p_0_0_8!=17/\p_0_1_8=17)->c_0_0<0;

% Rule 8
constraint (p_0_1_2=0/\p_0_2_2!=0)->c_0_1<0;
constraint (p_0_1_2!=0/\p_0_2_2=0)->c_0_1<0;

constraint (p_0_1_2=1/\p_0_2_2!=1)->c_0_1<0;
constraint (p_0_1_2!=1/\p_0_2_2=1)->c_0_1<0;

constraint (p_0_1_2=2/\p_0_2_2!=2)->c_0_1<0;
constraint (p_0_1_2!=2/\p_0_2_2=2)->c_0_1<0;

constraint (p_0_1_0=3/\p_0_2_0!=3)->c_0_1<0;
constraint (p_0_1_0!=3/\p_0_2_0=3)->c_0_1<0;

constraint (p_0_1_3=4/\p_0_2_3!=4)->c_0_1<0;
constraint (p_0_1_3!=4/\p_0_2_3=4)->c_0_1<0;

constraint (p_0_1_0=5/\p_0_2_0!=5)->c_0_1<0;
constraint (p_0_1_0!=5/\p_0_2_0=5)->c_0_1<0;

constraint (p_0_1_3=6/\p_0_2_3!=6)->c_0_1<0;
constraint (p_0_1_3!=6/\p_0_2_3=6)->c_0_1<0;

constraint (p_0_1_1=7/\p_0_2_1!=7)->c_0_1<0;
constraint (p_0_1_1!=7/\p_0_2_1=7)->c_0_1<0;

constraint (p_0_1_1=8/\p_0_2_1!=8)->c_0_1<0;
constraint (p_0_1_1!=8/\p_0_2_1=8)->c_0_1<0;

constraint (p_0_1_0=9/\p_0_2_0!=9)->c_0_1<0;
constraint (p_0_1_0!=9/\p_0_2_0=9)->c_0_1<0;

constraint (p_0_1_1=10/\p_0_2_1!=10)->c_0_1<0;
constraint (p_0_1_1!=10/\p_0_2_1=10)->c_0_1<0;

constraint (p_0_1_0=11/\p_0_2_0!=11)->c_0_1<0;
constraint (p_0_1_0!=11/\p_0_2_0=11)->c_0_1<0;

constraint (p_0_1_1=12/\p_0_2_1!=12)->c_0_1<0;
constraint (p_0_1_1!=12/\p_0_2_1=12)->c_0_1<0;

constraint (p_0_1_4=13/\p_0_2_4!=13)->c_0_1<0;
constraint (p_0_1_4!=13/\p_0_2_4=13)->c_0_1<0;

constraint (p_0_1_5=14/\p_0_2_5!=14)->c_0_1<0;
constraint (p_0_1_5!=14/\p_0_2_5=14)->c_0_1<0;

constraint (p_0_1_6=15/\p_0_2_6!=15)->c_0_1<0;
constraint (p_0_1_6!=15/\p_0_2_6=15)->c_0_1<0;

constraint (p_0_1_7=16/\p_0_2_7!=16)->c_0_1<0;
constraint (p_0_1_7!=16/\p_0_2_7=16)->c_0_1<0;

constraint (p_0_1_8=17/\p_0_2_8!=17)->c_0_1<0;
constraint (p_0_1_8!=17/\p_0_2_8=17)->c_0_1<0;

% Rule 10
constraint p_0_0_0=p_1_0_0;
constraint p_0_0_1=p_1_0_1;
constraint p_0_0_2=p_1_0_2;
constraint p_0_0_3=p_1_0_3;
constraint p_0_0_4=p_1_0_4;
constraint p_0_0_5=p_1_0_5;
constraint p_0_0_6=p_1_0_6;
constraint p_0_0_7=p_1_0_7;
constraint p_0_0_8=p_1_0_8;
constraint p_0_1_0=p_1_4_0;
constraint p_0_1_1=p_1_4_1;
constraint p_0_1_2=p_1_4_2;
constraint p_0_1_3=p_1_4_3;
constraint p_0_1_4=p_1_4_4;
constraint p_0_1_5=p_1_4_5;
constraint p_0_1_6=p_1_4_6;
constraint p_0_1_7=p_1_4_7;
constraint p_0_1_8=p_1_4_8;
constraint p_0_2_0=p_1_8_0;
constraint p_0_2_1=p_1_8_1;
constraint p_0_2_2=p_1_8_2;
constraint p_0_2_3=p_1_8_3;
constraint p_0_2_4=p_1_8_4;
constraint p_0_2_5=p_1_8_5;
constraint p_0_2_6=p_1_8_6;
constraint p_0_2_7=p_1_8_7;
constraint p_0_2_8=p_1_8_8;
% Rule 11
constraint c_0_0>=0 -> c_0_0==c_1_0;
constraint c_0_1>=0 -> c_0_1==c_1_4;
constraint c_0_2>=0 -> c_0_2==c_1_8;
constraint c_0_0=-1 -> c_1_0=-7\/c_1_0=-8\/c_1_0=-9\/false;
constraint c_0_0=-1 -> c_1_1=-10\/false;
constraint c_0_0=-1 -> c_1_2=-7\/c_1_2=-8\/c_1_2=-9\/false;
constraint c_0_0=-1 -> c_1_3=-11\/false;
constraint c_0_0=-2 -> c_1_0=-12\/c_1_0=-13\/c_1_0=-14\/c_1_0=-15\/c_1_0=-16\/false;
constraint c_0_0=-2 -> c_1_1=-17\/false;
constraint c_0_0=-2 -> c_1_2=-7\/c_1_2=-8\/c_1_2=-9\/false;
constraint c_0_0=-2 -> c_1_3=-11\/false;
constraint c_0_0=-3 -> c_1_0=-18\/c_1_0=-19\/c_1_0=-20\/false;
constraint c_0_0=-3 -> c_1_1=-21\/false;
constraint c_0_0=-3 -> c_1_2=-7\/c_1_2=-8\/c_1_2=-9\/false;
constraint c_0_0=-3 -> c_1_3=-11\/false;
constraint c_0_1=-4 -> c_1_4=-7\/c_1_4=-8\/c_1_4=-9\/false;
constraint c_0_1=-4 -> c_1_5=-22\/false;
constraint c_0_1=-4 -> c_1_6=-18\/c_1_6=-19\/c_1_6=-20\/false;
constraint c_0_1=-4 -> c_1_7=-23\/false;
constraint c_0_1=-5 -> c_1_4=-12\/c_1_4=-13\/c_1_4=-14\/c_1_4=-15\/c_1_4=-16\/false;
constraint c_0_1=-5 -> c_1_5=-24\/false;
constraint c_0_1=-5 -> c_1_6=-18\/c_1_6=-19\/c_1_6=-20\/false;
constraint c_0_1=-5 -> c_1_7=-23\/false;
constraint c_0_1=-6 -> c_1_4=-18\/c_1_4=-19\/c_1_4=-20\/false;
constraint c_0_1=-6 -> c_1_5=-25\/false;
constraint c_0_1=-6 -> c_1_6=-18\/c_1_6=-19\/c_1_6=-20\/false;
constraint c_0_1=-6 -> c_1_7=-23\/false;
