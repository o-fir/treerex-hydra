(define
 (problem pfile_02_030)
 (:domain blocks)
 (:objects arm1 arm2 - ARM
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
  (clear b12)
  (on-table b27)
  (on b12 b29)
  (on b29 b5)
  (on b5 b23)
  (on b23 b26)
  (on b26 b1)
  (on b1 b28)
  (on b28 b27)
  (clear b15)
  (on-table b25)
  (on b15 b14)
  (on b14 b24)
  (on b24 b2)
  (on b2 b10)
  (on b10 b8)
  (on b8 b13)
  (on b13 b19)
  (on b19 b17)
  (on b17 b9)
  (on b9 b6)
  (on b6 b22)
  (on b22 b18)
  (on b18 b11)
  (on b11 b30)
  (on b30 b25)
  (clear b3)
  (on-table b21)
  (on b3 b20)
  (on b20 b16)
  (on b16 b7)
  (on b7 b4)
  (on b4 b21))
 (:goal (and
         (clear b10)
         (on-table b27)
         (on b10 b21)
         (on b21 b27)
         (clear b19)
         (on-table b20)
         (on b19 b26)
         (on b26 b20)
         (clear b16)
         (on-table b14)
         (on b16 b15)
         (on b15 b7)
         (on b7 b18)
         (on b18 b28)
         (on b28 b25)
         (on b25 b1)
         (on b1 b8)
         (on b8 b13)
         (on b13 b23)
         (on b23 b9)
         (on b9 b24)
         (on b24 b4)
         (on b4 b30)
         (on b30 b5)
         (on b5 b2)
         (on b2 b17)
         (on b17 b14)
         (clear b3)
         (on-table b12)
         (on b3 b29)
         (on b29 b12)
         (clear b6)
         (on-table b11)
         (on b6 b22)
         (on b22 b11)))
                      (:tasks (task0 (achieve-goals arm1)))
                      (:tasks (task1 (achieve-goals arm2)))
)