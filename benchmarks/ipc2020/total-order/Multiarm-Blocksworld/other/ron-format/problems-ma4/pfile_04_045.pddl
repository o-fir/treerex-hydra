(define
 (problem pfile_04_045)
 (:domain blocks)
 (:objects arm1 arm2 arm3 arm4 - ARM
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (clear b31)
  (on-table b42)
  (on b31 b16)
  (on b16 b13)
  (on b13 b28)
  (on b28 b23)
  (on b23 b40)
  (on b40 b32)
  (on b32 b39)
  (on b39 b24)
  (on b24 b6)
  (on b6 b19)
  (on b19 b38)
  (on b38 b45)
  (on b45 b33)
  (on b33 b26)
  (on b26 b42)
  (clear b44)
  (on-table b37)
  (on b44 b36)
  (on b36 b18)
  (on b18 b22)
  (on b22 b12)
  (on b12 b25)
  (on b25 b37)
  (clear b21)
  (on-table b21)
  (clear b34)
  (on-table b14)
  (on b34 b15)
  (on b15 b41)
  (on b41 b30)
  (on b30 b20)
  (on b20 b5)
  (on b5 b43)
  (on b43 b8)
  (on b8 b10)
  (on b10 b3)
  (on b3 b11)
  (on b11 b4)
  (on b4 b27)
  (on b27 b14)
  (clear b17)
  (on-table b9)
  (on b17 b29)
  (on b29 b1)
  (on b1 b9)
  (clear b35)
  (on-table b7)
  (on b35 b7)
  (clear b2)
  (on-table b2))
 (:goal (and
         (clear b18)
         (on-table b40)
         (on b18 b40)
         (clear b31)
         (on-table b37)
         (on b31 b20)
         (on b20 b41)
         (on b41 b37)
         (clear b9)
         (on-table b33)
         (on b9 b24)
         (on b24 b44)
         (on b44 b7)
         (on b7 b16)
         (on b16 b5)
         (on b5 b34)
         (on b34 b35)
         (on b35 b29)
         (on b29 b17)
         (on b17 b42)
         (on b42 b22)
         (on b22 b27)
         (on b27 b8)
         (on b8 b2)
         (on b2 b33)
         (clear b19)
         (on-table b23)
         (on b19 b4)
         (on b4 b38)
         (on b38 b39)
         (on b39 b6)
         (on b6 b32)
         (on b32 b23)
         (clear b14)
         (on-table b15)
         (on b14 b15)
         (clear b28)
         (on-table b13)
         (on b28 b25)
         (on b25 b13)
         (clear b1)
         (on-table b12)
         (on b1 b43)
         (on b43 b26)
         (on b26 b36)
         (on b36 b12)
         (clear b11)
         (on-table b10)
         (on b11 b10)
         (clear b45)
         (on-table b3)
         (on b45 b21)
         (on b21 b30)
         (on b30 b3)))
           (:tasks (task0 (achieve-goals arm1)))
           (:tasks (task1 (achieve-goals arm2)))
           (:tasks (task2 (achieve-goals arm3)))
           (:tasks (task3 (achieve-goals arm4)))
)