(define
 (problem pfile_05_050)
 (:domain blocks)
 (:objects arm1 arm2 arm3 arm4 arm5 - ARM
           b1
           b2
           b3
           b4
           b5
           b6
           b7
           b8
           b9
           b10
           b11
           b12
           b13
           b14
           b15
           b16
           b17
           b18
           b19
           b20
           b21
           b22
           b23
           b24
           b25
           b26
           b27
           b28
           b29
           b30
           b31
           b32
           b33
           b34
           b35
           b36
           b37
           b38
           b39
           b40
           b41
           b42
           b43
           b44
           b45
           b46
           b47
           b48
           b49
           b50
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (clear b2)
  (on-table b49)
  (on b2 b35)
  (on b35 b33)
  (on b33 b18)
  (on b18 b7)
  (on b7 b21)
  (on b21 b10)
  (on b10 b8)
  (on b8 b12)
  (on b12 b30)
  (on b30 b11)
  (on b11 b9)
  (on b9 b49)
  (clear b46)
  (on-table b46)
  (clear b47)
  (on-table b44)
  (on b47 b20)
  (on b20 b44)
  (clear b29)
  (on-table b43)
  (on b29 b34)
  (on b34 b19)
  (on b19 b50)
  (on b50 b5)
  (on b5 b28)
  (on b28 b38)
  (on b38 b43)
  (clear b6)
  (on-table b40)
  (on b6 b26)
  (on b26 b45)
  (on b45 b22)
  (on b22 b42)
  (on b42 b24)
  (on b24 b39)
  (on b39 b32)
  (on b32 b23)
  (on b23 b36)
  (on b36 b1)
  (on b1 b15)
  (on b15 b48)
  (on b48 b40)
  (clear b25)
  (on-table b25)
  (clear b41)
  (on-table b14)
  (on b41 b31)
  (on b31 b13)
  (on b13 b37)
  (on b37 b4)
  (on b4 b14)
  (clear b27)
  (on-table b3)
  (on b27 b16)
  (on b16 b17)
  (on b17 b3))
 (:goal (and
         (clear b23)
         (on-table b48)
         (on b23 b50)
         (on b50 b48)
         (clear b27)
         (on-table b41)
         (on b27 b42)
         (on b42 b29)
         (on b29 b4)
         (on b4 b33)
         (on b33 b10)
         (on b10 b41)
         (clear b36)
         (on-table b37)
         (on b36 b8)
         (on b8 b43)
         (on b43 b37)
         (clear b26)
         (on-table b35)
         (on b26 b30)
         (on b30 b1)
         (on b1 b18)
         (on b18 b24)
         (on b24 b6)
         (on b6 b3)
         (on b3 b49)
         (on b49 b35)
         (clear b21)
         (on-table b31)
         (on b21 b7)
         (on b7 b38)
         (on b38 b31)
         (clear b22)
         (on-table b22)
         (clear b34)
         (on-table b20)
         (on b34 b39)
         (on b39 b44)
         (on b44 b2)
         (on b2 b47)
         (on b47 b12)
         (on b12 b40)
         (on b40 b11)
         (on b11 b46)
         (on b46 b14)
         (on b14 b13)
         (on b13 b15)
         (on b15 b17)
         (on b17 b45)
         (on b45 b9)
         (on b9 b20)
         (clear b19)
         (on-table b19)
         (clear b16)
         (on-table b16)
         (clear b25)
         (on-table b5)
         (on b25 b32)
         (on b32 b28)
         (on b28 b5)))
                             (:tasks (task0 (achieve-goals arm1)))
                             (:tasks (task1 (achieve-goals arm2)))
                             (:tasks (task2 (achieve-goals arm3)))
                             (:tasks (task3 (achieve-goals arm4)))
                             (:tasks (task4 (achieve-goals arm5)))
)