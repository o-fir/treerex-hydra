(define
 (problem pfile_20_040)
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
           - ROOM
           d510
           d58
           d811
           d111
           d17
           d114
           d813
           d013
           d06
           d46
           d49
           d919
           d1619
           d24
           d618
           d420
           d512
           d1217
           d1315
           d319
           - ROOMDOOR)
 (:init
  (rloc c)
  (armempty)
  (door c r6 d06)
  (door c r13 d013)
  (door r1 r7 d17)
  (door r1 r11 d111)
  (door r1 r14 d114)
  (door r2 r4 d24)
  (door r3 r19 d319)
  (door r4 r2 d24)
  (door r4 r6 d46)
  (door r4 r9 d49)
  (door r4 r20 d420)
  (door r5 r8 d58)
  (door r5 r10 d510)
  (door r5 r12 d512)
  (door r6 c d06)
  (door r6 r4 d46)
  (door r6 r18 d618)
  (door r7 r1 d17)
  (door r8 r5 d58)
  (door r8 r11 d811)
  (door r8 r13 d813)
  (door r9 r4 d49)
  (door r9 r19 d919)
  (door r10 r5 d510)
  (door r11 r1 d111)
  (door r11 r8 d811)
  (door r12 r5 d512)
  (door r12 r17 d1217)
  (door r13 c d013)
  (door r13 r8 d813)
  (door r13 r15 d1315)
  (door r14 r1 d114)
  (door r15 r13 d1315)
  (door r16 r19 d1619)
  (door r17 r12 d1217)
  (door r18 r6 d618)
  (door r19 r3 d319)
  (door r19 r9 d919)
  (door r19 r16 d1619)
  (door r20 r4 d420)
  (closed d114)
  (closed d813)
  (closed d46)
  (closed d512)
  (closed d1315)
  (in o1 r10)
  (in o2 r6)
  (in o3 r16)
  (in o4 r6)
  (in o5 r20)
  (in o6 r5)
  (in o7 r12)
  (in o8 r15)
  (in o9 r20)
  (in o10 r7)
  (in o11 r16)
  (in o12 r14)
  (in o13 r9)
  (in o14 r15)
  (in o15 r10)
  (in o16 r3)
  (in o17 r19)
  (in o18 r10)
  (in o19 r12)
  (in o20 r10)
  (in o21 r4)
  (in o22 r14)
  (in o23 r14)
  (in o24 r10)
  (in o25 r9)
  (in o26 r3)
  (in o27 r13)
  (in o28 r10)
  (in o29 r18)
  (in o30 r5)
  (in o31 r5)
  (in o32 r3)
  (in o33 r9)
  (in o34 r12)
  (in o35 r19)
  (in o36 r19)
  (in o37 r14)
  (in o38 r20)
  (in o39 r6)
  (in o40 r13)
  (goal_in o1 r10)
           (goal_in o2 r4)
           (goal_in o3 r3)
           (goal_in o4 r19)
           (goal_in o5 r14)
           (goal_in o6 r5)
           (goal_in o7 r3)
           (goal_in o8 r20)
           (goal_in o9 r2)
           (goal_in o10 r1)
           (goal_in o11 r6)
           (goal_in o12 r6)
           (goal_in o13 r17)
           (goal_in o14 r14)
           (goal_in o15 r18)
           (goal_in o16 r4)
           (goal_in o17 r1)
           (goal_in o18 r12)
           (goal_in o19 r14)
           (goal_in o20 r5)
           (goal_in o21 r17)
           (goal_in o22 r5)
           (goal_in o23 r18)
           (goal_in o24 r20)
           (goal_in o25 r20)
           (goal_in o26 r9)
           (goal_in o27 r14)
           (goal_in o28 r4)
           (goal_in o29 r13)
           (goal_in o30 r13)
           (goal_in o31 r17)
           (goal_in o32 r4)
           (goal_in o33 r10)
           (goal_in o34 r20)
           (goal_in o35 r11)
           (goal_in o36 r5)
           (goal_in o37 r3)
           (goal_in o38 r18)
           (goal_in o39 r12)
           (goal_in o40 r1))
 (:goal (and
         (in o1 r10)
         (in o2 r4)
         (in o3 r3)
         (in o4 r19)
         (in o5 r14)
         (in o6 r5)
         (in o7 r3)
         (in o8 r20)
         (in o9 r2)
         (in o10 r1)
         (in o11 r6)
         (in o12 r6)
         (in o13 r17)
         (in o14 r14)
         (in o15 r18)
         (in o16 r4)
         (in o17 r1)
         (in o18 r12)
         (in o19 r14)
         (in o20 r5)
         (in o21 r17)
         (in o22 r5)
         (in o23 r18)
         (in o24 r20)
         (in o25 r20)
         (in o26 r9)
         (in o27 r14)
         (in o28 r4)
         (in o29 r13)
         (in o30 r13)
         (in o31 r17)
         (in o32 r4)
         (in o33 r10)
         (in o34 r20)
         (in o35 r11)
         (in o36 r5)
         (in o37 r3)
         (in o38 r18)
         (in o39 r12)
         (in o40 r1)))
             (:tasks (task0 (achieve-goals)))
)