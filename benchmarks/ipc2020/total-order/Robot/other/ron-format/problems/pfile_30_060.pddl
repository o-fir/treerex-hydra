(define
 (problem pfile_30_060)
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
           - ROOM
           d1323
           d613
           d1013
           d1024
           d2429
           d523
           d45
           d48
           d24
           d12
           d127
           d411
           d1126
           d1125
           d2025
           d1720
           d2225
           d1825
           d318
           d1418
           d1828
           d2128
           d710
           d1224
           d1219
           d1619
           d916
           d1930
           d1530
           d029
           - ROOMDOOR)
 (:init
  (rloc c)
  (armempty)
  (door c r29 d029)
  (door r1 r2 d12)
  (door r1 r27 d127)
  (door r2 r1 d12)
  (door r2 r4 d24)
  (door r3 r18 d318)
  (door r4 r2 d24)
  (door r4 r5 d45)
  (door r4 r8 d48)
  (door r4 r11 d411)
  (door r5 r4 d45)
  (door r5 r23 d523)
  (door r6 r13 d613)
  (door r7 r10 d710)
  (door r8 r4 d48)
  (door r9 r16 d916)
  (door r10 r7 d710)
  (door r10 r13 d1013)
  (door r10 r24 d1024)
  (door r11 r4 d411)
  (door r11 r25 d1125)
  (door r11 r26 d1126)
  (door r12 r19 d1219)
  (door r12 r24 d1224)
  (door r13 r6 d613)
  (door r13 r10 d1013)
  (door r13 r23 d1323)
  (door r14 r18 d1418)
  (door r15 r30 d1530)
  (door r16 r9 d916)
  (door r16 r19 d1619)
  (door r17 r20 d1720)
  (door r18 r3 d318)
  (door r18 r14 d1418)
  (door r18 r25 d1825)
  (door r18 r28 d1828)
  (door r19 r12 d1219)
  (door r19 r16 d1619)
  (door r19 r30 d1930)
  (door r20 r17 d1720)
  (door r20 r25 d2025)
  (door r21 r28 d2128)
  (door r22 r25 d2225)
  (door r23 r5 d523)
  (door r23 r13 d1323)
  (door r24 r10 d1024)
  (door r24 r12 d1224)
  (door r24 r29 d2429)
  (door r25 r11 d1125)
  (door r25 r18 d1825)
  (door r25 r20 d2025)
  (door r25 r22 d2225)
  (door r26 r11 d1126)
  (door r27 r1 d127)
  (door r28 r18 d1828)
  (door r28 r21 d2128)
  (door r29 c d029)
  (door r29 r24 d2429)
  (door r30 r15 d1530)
  (door r30 r19 d1930)
  (closed d523)
  (closed d45)
  (closed d48)
  (closed d127)
  (closed d1126)
  (closed d1125)
  (closed d1720)
  (closed d2225)
  (closed d318)
  (closed d1828)
  (closed d710)
  (closed d1224)
  (closed d1219)
  (closed d1530)
  (closed d029)
  (in o1 r30)
  (in o2 r29)
  (in o3 r19)
  (in o4 r7)
  (in o5 r8)
  (in o6 r12)
  (in o7 r23)
  (in o8 r7)
  (in o9 r29)
  (in o10 r8)
  (in o11 r9)
  (in o12 r7)
  (in o13 r19)
  (in o14 r10)
  (in o15 r19)
  (in o16 r14)
  (in o17 r14)
  (in o18 r21)
  (in o19 r3)
  (in o20 r12)
  (in o21 r23)
  (in o22 r2)
  (in o23 r7)
  (in o24 r19)
  (in o25 r6)
  (in o26 r10)
  (in o27 r4)
  (in o28 r11)
  (in o29 r3)
  (in o30 r15)
  (in o31 r9)
  (in o32 r28)
  (in o33 r22)
  (in o34 r14)
  (in o35 r5)
  (in o36 r20)
  (in o37 r8)
  (in o38 r17)
  (in o39 r20)
  (in o40 r18)
  (in o41 r22)
  (in o42 r28)
  (in o43 r14)
  (in o44 r28)
  (in o45 r11)
  (in o46 r24)
  (in o47 r26)
  (in o48 r16)
  (in o49 r8)
  (in o50 r30)
  (in o51 r6)
  (in o52 r10)
  (in o53 r28)
  (in o54 r3)
  (in o55 r20)
  (in o56 r29)
  (in o57 r8)
  (in o58 r4)
  (in o59 r22)
  (in o60 r29)
  (goal_in o1 r1)
           (goal_in o2 r11)
           (goal_in o3 r25)
           (goal_in o4 r24)
           (goal_in o5 r8)
           (goal_in o6 r24)
           (goal_in o7 r6)
           (goal_in o8 r27)
           (goal_in o9 r12)
           (goal_in o10 r15)
           (goal_in o11 r14)
           (goal_in o12 r13)
           (goal_in o13 r4)
           (goal_in o14 r7)
           (goal_in o15 r6)
           (goal_in o16 r7)
           (goal_in o17 r9)
           (goal_in o18 r26)
           (goal_in o19 r24)
           (goal_in o20 r25)
           (goal_in o21 r28)
           (goal_in o22 r29)
           (goal_in o23 r21)
           (goal_in o24 r16)
           (goal_in o25 r26)
           (goal_in o26 r21)
           (goal_in o27 r18)
           (goal_in o28 r18)
           (goal_in o29 r3)
           (goal_in o30 r29)
           (goal_in o31 r21)
           (goal_in o32 r4)
           (goal_in o33 r16)
           (goal_in o34 r18)
           (goal_in o35 r14)
           (goal_in o36 r25)
           (goal_in o37 r20)
           (goal_in o38 r30)
           (goal_in o39 r14)
           (goal_in o40 r25)
           (goal_in o41 r3)
           (goal_in o42 r19)
           (goal_in o43 r17)
           (goal_in o44 r8)
           (goal_in o45 r14)
           (goal_in o46 r8)
           (goal_in o47 r26)
           (goal_in o48 r23)
           (goal_in o49 r26)
           (goal_in o50 r17)
           (goal_in o51 r2)
           (goal_in o52 r13)
           (goal_in o53 r24)
           (goal_in o54 r19)
           (goal_in o55 r17)
           (goal_in o56 r5)
           (goal_in o57 r13)
           (goal_in o58 r4)
           (goal_in o59 r22)
           (goal_in o60 r10))
 (:goal (and
         (in o1 r1)
         (in o2 r11)
         (in o3 r25)
         (in o4 r24)
         (in o5 r8)
         (in o6 r24)
         (in o7 r6)
         (in o8 r27)
         (in o9 r12)
         (in o10 r15)
         (in o11 r14)
         (in o12 r13)
         (in o13 r4)
         (in o14 r7)
         (in o15 r6)
         (in o16 r7)
         (in o17 r9)
         (in o18 r26)
         (in o19 r24)
         (in o20 r25)
         (in o21 r28)
         (in o22 r29)
         (in o23 r21)
         (in o24 r16)
         (in o25 r26)
         (in o26 r21)
         (in o27 r18)
         (in o28 r18)
         (in o29 r3)
         (in o30 r29)
         (in o31 r21)
         (in o32 r4)
         (in o33 r16)
         (in o34 r18)
         (in o35 r14)
         (in o36 r25)
         (in o37 r20)
         (in o38 r30)
         (in o39 r14)
         (in o40 r25)
         (in o41 r3)
         (in o42 r19)
         (in o43 r17)
         (in o44 r8)
         (in o45 r14)
         (in o46 r8)
         (in o47 r26)
         (in o48 r23)
         (in o49 r26)
         (in o50 r17)
         (in o51 r2)
         (in o52 r13)
         (in o53 r24)
         (in o54 r19)
         (in o55 r17)
         (in o56 r5)
         (in o57 r13)
         (in o58 r4)
         (in o59 r22)
         (in o60 r10)))
             (:tasks (task0 (achieve-goals)))
)