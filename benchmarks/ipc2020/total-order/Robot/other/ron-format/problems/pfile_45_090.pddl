(define
 (problem pfile_45_090)
 (:domain robot)
 (:objects o1
           o2
           o3
           o4
           o5
           o6
           o7
           o8
           o9
           o10
           o11
           o12
           o13
           o14
           o15
           o16
           o17
           o18
           o19
           o20
           o21
           o22
           o23
           o24
           o25
           o26
           o27
           o28
           o29
           o30
           o31
           o32
           o33
           o34
           o35
           o36
           o37
           o38
           o39
           o40
           o41
           o42
           o43
           o44
           o45
           o46
           o47
           o48
           o49
           o50
           o51
           o52
           o53
           o54
           o55
           o56
           o57
           o58
           o59
           o60
           o61
           o62
           o63
           o64
           o65
           o66
           o67
           o68
           o69
           o70
           o71
           o72
           o73
           o74
           o75
           o76
           o77
           o78
           o79
           o80
           o81
           o82
           o83
           o84
           o85
           o86
           o87
           o88
           o89
           o90
           - PACKAGE
           c
           r1
           r2
           r3
           r4
           r5
           r6
           r7
           r8
           r9
           r10
           r11
           r12
           r13
           r14
           r15
           r16
           r17
           r18
           r19
           r20
           r21
           r22
           r23
           r24
           r25
           r26
           r27
           r28
           r29
           r30
           r31
           r32
           r33
           r34
           r35
           r36
           r37
           r38
           r39
           r40
           r41
           r42
           r43
           r44
           r45
           - ROOM
           d1318
           d1329
           d1345
           d4045
           d518
           d542
           d418
           d422
           d2224
           d437
           d526
           d15
           d1445
           d929
           d2239
           d3943
           d1539
           d1516
           d1525
           d544
           d3544
           d1744
           d1719
           d1933
           d833
           d1721
           d2123
           d3536
           d036
           d020
           d2027
           d2531
           d636
           d628
           d78
           d343
           d312
           d2634
           d235
           d2638
           d1038
           d1041
           d1830
           d1138
           d832
           - ROOMDOOR)
 (:init
  (rloc c)
  (armempty)
  (door c r20 d020)
  (door c r36 d036)
  (door r1 r5 d15)
  (door r2 r35 d235)
  (door r3 r12 d312)
  (door r3 r43 d343)
  (door r4 r18 d418)
  (door r4 r22 d422)
  (door r4 r37 d437)
  (door r5 r1 d15)
  (door r5 r18 d518)
  (door r5 r26 d526)
  (door r5 r42 d542)
  (door r5 r44 d544)
  (door r6 r28 d628)
  (door r6 r36 d636)
  (door r7 r8 d78)
  (door r8 r7 d78)
  (door r8 r32 d832)
  (door r8 r33 d833)
  (door r9 r29 d929)
  (door r10 r38 d1038)
  (door r10 r41 d1041)
  (door r11 r38 d1138)
  (door r12 r3 d312)
  (door r13 r18 d1318)
  (door r13 r29 d1329)
  (door r13 r45 d1345)
  (door r14 r45 d1445)
  (door r15 r16 d1516)
  (door r15 r25 d1525)
  (door r15 r39 d1539)
  (door r16 r15 d1516)
  (door r17 r19 d1719)
  (door r17 r21 d1721)
  (door r17 r44 d1744)
  (door r18 r4 d418)
  (door r18 r5 d518)
  (door r18 r13 d1318)
  (door r18 r30 d1830)
  (door r19 r17 d1719)
  (door r19 r33 d1933)
  (door r20 c d020)
  (door r20 r27 d2027)
  (door r21 r17 d1721)
  (door r21 r23 d2123)
  (door r22 r4 d422)
  (door r22 r24 d2224)
  (door r22 r39 d2239)
  (door r23 r21 d2123)
  (door r24 r22 d2224)
  (door r25 r15 d1525)
  (door r25 r31 d2531)
  (door r26 r5 d526)
  (door r26 r34 d2634)
  (door r26 r38 d2638)
  (door r27 r20 d2027)
  (door r28 r6 d628)
  (door r29 r9 d929)
  (door r29 r13 d1329)
  (door r30 r18 d1830)
  (door r31 r25 d2531)
  (door r32 r8 d832)
  (door r33 r8 d833)
  (door r33 r19 d1933)
  (door r34 r26 d2634)
  (door r35 r2 d235)
  (door r35 r36 d3536)
  (door r35 r44 d3544)
  (door r36 c d036)
  (door r36 r6 d636)
  (door r36 r35 d3536)
  (door r37 r4 d437)
  (door r38 r10 d1038)
  (door r38 r11 d1138)
  (door r38 r26 d2638)
  (door r39 r15 d1539)
  (door r39 r22 d2239)
  (door r39 r43 d3943)
  (door r40 r45 d4045)
  (door r41 r10 d1041)
  (door r42 r5 d542)
  (door r43 r3 d343)
  (door r43 r39 d3943)
  (door r44 r5 d544)
  (door r44 r17 d1744)
  (door r44 r35 d3544)
  (door r45 r13 d1345)
  (door r45 r14 d1445)
  (door r45 r40 d4045)
  (closed d1318)
  (closed d418)
  (closed d437)
  (closed d526)
  (closed d15)
  (closed d929)
  (closed d1539)
  (closed d1525)
  (closed d544)
  (closed d1744)
  (closed d1719)
  (closed d833)
  (closed d2123)
  (closed d2531)
  (closed d636)
  (closed d78)
  (closed d235)
  (closed d1038)
  (closed d1138)
  (in o1 r25)
  (in o2 r27)
  (in o3 r34)
  (in o4 r15)
  (in o5 r36)
  (in o6 r30)
  (in o7 r12)
  (in o8 r1)
  (in o9 r33)
  (in o10 r43)
  (in o11 r45)
  (in o12 r35)
  (in o13 r31)
  (in o14 r12)
  (in o15 r41)
  (in o16 r44)
  (in o17 r39)
  (in o18 r31)
  (in o19 r4)
  (in o20 r43)
  (in o21 r8)
  (in o22 r30)
  (in o23 r10)
  (in o24 r1)
  (in o25 r12)
  (in o26 r26)
  (in o27 r43)
  (in o28 r9)
  (in o29 r17)
  (in o30 r40)
  (in o31 r44)
  (in o32 r3)
  (in o33 r36)
  (in o34 r35)
  (in o35 r11)
  (in o36 r8)
  (in o37 r32)
  (in o38 r8)
  (in o39 r23)
  (in o40 r21)
  (in o41 r29)
  (in o42 r26)
  (in o43 r14)
  (in o44 r30)
  (in o45 r22)
  (in o46 r5)
  (in o47 r31)
  (in o48 r41)
  (in o49 r16)
  (in o50 r15)
  (in o51 r38)
  (in o52 r9)
  (in o53 r24)
  (in o54 r9)
  (in o55 r40)
  (in o56 r2)
  (in o57 r8)
  (in o58 r21)
  (in o59 r34)
  (in o60 r38)
  (in o61 r24)
  (in o62 r28)
  (in o63 r30)
  (in o64 r10)
  (in o65 r3)
  (in o66 r16)
  (in o67 r13)
  (in o68 r3)
  (in o69 r3)
  (in o70 r26)
  (in o71 r35)
  (in o72 r10)
  (in o73 r4)
  (in o74 r11)
  (in o75 r19)
  (in o76 r28)
  (in o77 r21)
  (in o78 r11)
  (in o79 r21)
  (in o80 r3)
  (in o81 r35)
  (in o82 r39)
  (in o83 r37)
  (in o84 r23)
  (in o85 r13)
  (in o86 r6)
  (in o87 r23)
  (in o88 r12)
  (in o89 r44)
  (in o90 r28)
  (goal_in o1 r14)
           (goal_in o2 r44)
           (goal_in o3 r10)
           (goal_in o4 r5)
           (goal_in o5 r18)
           (goal_in o6 r35)
           (goal_in o7 r16)
           (goal_in o8 r23)
           (goal_in o9 r4)
           (goal_in o10 r9)
           (goal_in o11 r21)
           (goal_in o12 r23)
           (goal_in o13 r17)
           (goal_in o14 r6)
           (goal_in o15 r31)
           (goal_in o16 r8)
           (goal_in o17 r6)
           (goal_in o18 r11)
           (goal_in o19 r6)
           (goal_in o20 r37)
           (goal_in o21 r7)
           (goal_in o22 r23)
           (goal_in o23 r22)
           (goal_in o24 r43)
           (goal_in o25 r7)
           (goal_in o26 r21)
           (goal_in o27 r2)
           (goal_in o28 r6)
           (goal_in o29 r12)
           (goal_in o30 r9)
           (goal_in o31 r16)
           (goal_in o32 r29)
           (goal_in o33 r12)
           (goal_in o34 r30)
           (goal_in o35 r12)
           (goal_in o36 r38)
           (goal_in o37 r5)
           (goal_in o38 r14)
           (goal_in o39 r5)
           (goal_in o40 r21)
           (goal_in o41 r10)
           (goal_in o42 r40)
           (goal_in o43 r20)
           (goal_in o44 r27)
           (goal_in o45 r37)
           (goal_in o46 r14)
           (goal_in o47 r27)
           (goal_in o48 r18)
           (goal_in o49 r28)
           (goal_in o50 r20)
           (goal_in o51 r39)
           (goal_in o52 r18)
           (goal_in o53 r9)
           (goal_in o54 r23)
           (goal_in o55 r14)
           (goal_in o56 r16)
           (goal_in o57 r34)
           (goal_in o58 r12)
           (goal_in o59 r1)
           (goal_in o60 r32)
           (goal_in o61 r1)
           (goal_in o62 r44)
           (goal_in o63 r30)
           (goal_in o64 r2)
           (goal_in o65 r35)
           (goal_in o66 r40)
           (goal_in o67 r5)
           (goal_in o68 r13)
           (goal_in o69 r28)
           (goal_in o70 r18)
           (goal_in o71 r39)
           (goal_in o72 r3)
           (goal_in o73 r2)
           (goal_in o74 r29)
           (goal_in o75 r44)
           (goal_in o76 r37)
           (goal_in o77 r21)
           (goal_in o78 r40)
           (goal_in o79 r41)
           (goal_in o80 r30)
           (goal_in o81 r12)
           (goal_in o82 r37)
           (goal_in o83 r26)
           (goal_in o84 r11)
           (goal_in o85 r1)
           (goal_in o86 r45)
           (goal_in o87 r2)
           (goal_in o88 r39)
           (goal_in o89 r21)
           (goal_in o90 r1))
 (:goal (and
         (in o1 r14)
         (in o2 r44)
         (in o3 r10)
         (in o4 r5)
         (in o5 r18)
         (in o6 r35)
         (in o7 r16)
         (in o8 r23)
         (in o9 r4)
         (in o10 r9)
         (in o11 r21)
         (in o12 r23)
         (in o13 r17)
         (in o14 r6)
         (in o15 r31)
         (in o16 r8)
         (in o17 r6)
         (in o18 r11)
         (in o19 r6)
         (in o20 r37)
         (in o21 r7)
         (in o22 r23)
         (in o23 r22)
         (in o24 r43)
         (in o25 r7)
         (in o26 r21)
         (in o27 r2)
         (in o28 r6)
         (in o29 r12)
         (in o30 r9)
         (in o31 r16)
         (in o32 r29)
         (in o33 r12)
         (in o34 r30)
         (in o35 r12)
         (in o36 r38)
         (in o37 r5)
         (in o38 r14)
         (in o39 r5)
         (in o40 r21)
         (in o41 r10)
         (in o42 r40)
         (in o43 r20)
         (in o44 r27)
         (in o45 r37)
         (in o46 r14)
         (in o47 r27)
         (in o48 r18)
         (in o49 r28)
         (in o50 r20)
         (in o51 r39)
         (in o52 r18)
         (in o53 r9)
         (in o54 r23)
         (in o55 r14)
         (in o56 r16)
         (in o57 r34)
         (in o58 r12)
         (in o59 r1)
         (in o60 r32)
         (in o61 r1)
         (in o62 r44)
         (in o63 r30)
         (in o64 r2)
         (in o65 r35)
         (in o66 r40)
         (in o67 r5)
         (in o68 r13)
         (in o69 r28)
         (in o70 r18)
         (in o71 r39)
         (in o72 r3)
         (in o73 r2)
         (in o74 r29)
         (in o75 r44)
         (in o76 r37)
         (in o77 r21)
         (in o78 r40)
         (in o79 r41)
         (in o80 r30)
         (in o81 r12)
         (in o82 r37)
         (in o83 r26)
         (in o84 r11)
         (in o85 r1)
         (in o86 r45)
         (in o87 r2)
         (in o88 r39)
         (in o89 r21)
         (in o90 r1)))
             (:tasks (task0 (achieve-goals)))
)