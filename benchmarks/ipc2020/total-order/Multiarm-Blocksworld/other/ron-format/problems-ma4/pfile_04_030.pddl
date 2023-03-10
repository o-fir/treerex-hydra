(define
 (problem pfile_04_030)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (clear b19)
  (on-table b25)
  (on b19 b25)
  (clear b12)
  (on-table b20)
  (on b12 b21)
  (on b21 b27)
  (on b27 b8)
  (on b8 b7)
  (on b7 b26)
  (on b26 b20)
  (clear b3)
  (on-table b14)
  (on b3 b30)
  (on b30 b29)
  (on b29 b2)
  (on b2 b14)
  (clear b17)
  (on-table b9)
  (on b17 b16)
  (on b16 b22)
  (on b22 b5)
  (on b5 b9)
  (clear b10)
  (on-table b6)
  (on b10 b13)
  (on b13 b18)
  (on b18 b15)
  (on b15 b1)
  (on b1 b28)
  (on b28 b11)
  (on b11 b24)
  (on b24 b23)
  (on b23 b6)
  (clear b4)
  (on-table b4))
 (:goal (and
         (clear b10)
         (on-table b27)
         (on b10 b27)
         (clear b29)
         (on-table b26)
         (on b29 b14)
         (on b14 b11)
         (on b11 b22)
         (on b22 b26)
         (clear b25)
         (on-table b24)
         (on b25 b19)
         (on b19 b6)
         (on b6 b20)
         (on b20 b9)
         (on b9 b4)
         (on b4 b16)
         (on b16 b24)
         (clear b23)
         (on-table b23)
         (clear b5)
         (on-table b13)
         (on b5 b17)
         (on b17 b8)
         (on b8 b18)
         (on b18 b2)
         (on b2 b21)
         (on b21 b28)
         (on b28 b13)
         (clear b30)
         (on-table b7)
         (on b30 b3)
         (on b3 b12)
         (on b12 b7)
         (clear b15)
         (on-table b1)
         (on b15 b1)))
           (:tasks (task0 (achieve-goals arm1)))
           (:tasks (task1 (achieve-goals arm2)))
           (:tasks (task2 (achieve-goals arm3)))
           (:tasks (task3 (achieve-goals arm4)))
)