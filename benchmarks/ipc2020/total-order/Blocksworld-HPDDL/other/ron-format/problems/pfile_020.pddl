(define
 (problem pfile_020)
 (:domain blocks)
 (:objects b1
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
  (hand-empty)
  (clear b17)
  (on-table b14)
  (on b17 b14)
  (clear b13)
  (on-table b7)
  (on b13 b9)
  (on b9 b3)
  (on b3 b19)
  (on b19 b16)
  (on b16 b8)
  (on b8 b12)
  (on b12 b7)
  (clear b11)
  (on-table b6)
  (on b11 b5)
  (on b5 b4)
  (on b4 b18)
  (on b18 b15)
  (on b15 b20)
  (on b20 b1)
  (on b1 b10)
  (on b10 b6)
  (clear b2)
  (on-table b2))
 (:goal (and
         (clear b11)
         (on-table b19)
         (on b11 b1)
         (on b1 b19)
         (clear b3)
         (on-table b18)
         (on b3 b8)
         (on b8 b14)
         (on b14 b13)
         (on b13 b7)
         (on b7 b20)
         (on b20 b18)
         (clear b10)
         (on-table b17)
         (on b10 b17)
         (clear b2)
         (on-table b16)
         (on b2 b9)
         (on b9 b5)
         (on b5 b4)
         (on b4 b16)
         (clear b12)
         (on-table b12)
         (clear b15)
         (on-table b6)
         (on b15 b6)))
             (:tasks (task0 (achieve-goals)))
)