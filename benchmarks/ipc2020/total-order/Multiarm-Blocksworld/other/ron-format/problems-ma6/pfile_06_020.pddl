(define
 (problem pfile_06_020)
 (:domain blocks)
 (:objects arm1 arm2 arm3 arm4 arm5 arm6 - ARM
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
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (hand-empty arm6)
  (clear b18)
  (on-table b20)
  (on b18 b16)
  (on b16 b10)
  (on b10 b11)
  (on b11 b7)
  (on b7 b20)
  (clear b17)
  (on-table b19)
  (on b17 b4)
  (on b4 b19)
  (clear b14)
  (on-table b14)
  (clear b9)
  (on-table b6)
  (on b9 b6)
  (clear b12)
  (on-table b5)
  (on b12 b8)
  (on b8 b13)
  (on b13 b5)
  (clear b15)
  (on-table b2)
  (on b15 b3)
  (on b3 b1)
  (on b1 b2))
 (:goal (and
         (clear b2)
         (on-table b20)
         (on b2 b8)
         (on b8 b6)
         (on b6 b15)
         (on b15 b1)
         (on b1 b20)
         (clear b18)
         (on-table b14)
         (on b18 b17)
         (on b17 b14)
         (clear b13)
         (on-table b13)
         (clear b12)
         (on-table b12)
         (clear b11)
         (on-table b11)
         (clear b10)
         (on-table b7)
         (on b10 b16)
         (on b16 b7)
         (clear b5)
         (on-table b5)
         (clear b9)
         (on-table b4)
         (on b9 b19)
         (on b19 b3)
         (on b3 b4)))
                    (:tasks (task0 (achieve-goals arm1)))
                    (:tasks (task1 (achieve-goals arm2)))
                    (:tasks (task2 (achieve-goals arm3)))
                    (:tasks (task3 (achieve-goals arm4)))
                    (:tasks (task4 (achieve-goals arm5)))
                    (:tasks (task5 (achieve-goals arm6)))
)