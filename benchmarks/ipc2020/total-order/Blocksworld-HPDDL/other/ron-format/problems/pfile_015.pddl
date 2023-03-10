(define
 (problem pfile_015)
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
           - BLOCK)
 (:init
  (hand-empty)
  (clear b12)
  (on-table b13)
  (on b12 b4)
  (on b4 b3)
  (on b3 b10)
  (on b10 b15)
  (on b15 b14)
  (on b14 b13)
  (clear b1)
  (on-table b11)
  (on b1 b7)
  (on b7 b9)
  (on b9 b6)
  (on b6 b11)
  (clear b5)
  (on-table b8)
  (on b5 b2)
  (on b2 b8))
 (:goal (and
         (clear b7)
         (on-table b15)
         (on b7 b14)
         (on b14 b10)
         (on b10 b1)
         (on b1 b2)
         (on b2 b9)
         (on b9 b12)
         (on b12 b15)
         (clear b5)
         (on-table b11)
         (on b5 b11)
         (clear b13)
         (on-table b6)
         (on b13 b3)
         (on b3 b8)
         (on b8 b6)
         (clear b4)
         (on-table b4)))
             (:tasks (task0 (achieve-goals)))
)