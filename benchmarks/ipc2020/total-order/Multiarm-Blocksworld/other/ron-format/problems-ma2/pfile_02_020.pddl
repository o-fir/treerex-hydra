(define
 (problem pfile_02_020)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (clear b7)
  (on-table b18)
  (on b7 b18)
  (clear b5)
  (on-table b14)
  (on b5 b8)
  (on b8 b14)
  (clear b19)
  (on-table b12)
  (on b19 b12)
  (clear b1)
  (on-table b9)
  (on b1 b4)
  (on b4 b11)
  (on b11 b10)
  (on b10 b15)
  (on b15 b2)
  (on b2 b20)
  (on b20 b16)
  (on b16 b9)
  (clear b17)
  (on-table b3)
  (on b17 b13)
  (on b13 b6)
  (on b6 b3))
 (:goal (and
         (clear b11)
         (on-table b17)
         (on b11 b10)
         (on b10 b17)
         (clear b12)
         (on-table b13)
         (on b12 b2)
         (on b2 b19)
         (on b19 b15)
         (on b15 b5)
         (on b5 b20)
         (on b20 b13)
         (clear b9)
         (on-table b7)
         (on b9 b18)
         (on b18 b7)
         (clear b4)
         (on-table b3)
         (on b4 b8)
         (on b8 b14)
         (on b14 b16)
         (on b16 b1)
         (on b1 b6)
         (on b6 b3)))
                      (:tasks (task0 (achieve-goals arm1)))
                      (:tasks (task1 (achieve-goals arm2)))
)