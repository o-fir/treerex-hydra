(define
 (problem pfile_02_025)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (clear b23)
  (on-table b23)
  (clear b5)
  (on-table b16)
  (on b5 b25)
  (on b25 b16)
  (clear b6)
  (on-table b15)
  (on b6 b11)
  (on b11 b13)
  (on b13 b21)
  (on b21 b10)
  (on b10 b17)
  (on b17 b12)
  (on b12 b7)
  (on b7 b20)
  (on b20 b2)
  (on b2 b22)
  (on b22 b24)
  (on b24 b18)
  (on b18 b15)
  (clear b14)
  (on-table b9)
  (on b14 b3)
  (on b3 b4)
  (on b4 b8)
  (on b8 b1)
  (on b1 b19)
  (on b19 b9))
 (:goal (and
         (clear b10)
         (on-table b24)
         (on b10 b5)
         (on b5 b8)
         (on b8 b12)
         (on b12 b20)
         (on b20 b24)
         (clear b25)
         (on-table b13)
         (on b25 b17)
         (on b17 b14)
         (on b14 b16)
         (on b16 b6)
         (on b6 b11)
         (on b11 b9)
         (on b9 b4)
         (on b4 b2)
         (on b2 b23)
         (on b23 b13)
         (clear b18)
         (on-table b3)
         (on b18 b1)
         (on b1 b7)
         (on b7 b15)
         (on b15 b22)
         (on b22 b19)
         (on b19 b21)
         (on b21 b3)))
                      (:tasks (task0 (achieve-goals arm1)))
                      (:tasks (task1 (achieve-goals arm2)))
)