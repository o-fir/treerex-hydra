(define
 (problem pfile_045)
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
  (hand-empty)
  (clear b22)
  (on-table b33)
  (on b22 b42)
  (on b42 b4)
  (on b4 b11)
  (on b11 b23)
  (on b23 b38)
  (on b38 b37)
  (on b37 b31)
  (on b31 b30)
  (on b30 b12)
  (on b12 b16)
  (on b16 b33)
  (clear b32)
  (on-table b18)
  (on b32 b10)
  (on b10 b14)
  (on b14 b43)
  (on b43 b44)
  (on b44 b8)
  (on b8 b9)
  (on b9 b18)
  (clear b21)
  (on-table b17)
  (on b21 b45)
  (on b45 b40)
  (on b40 b3)
  (on b3 b29)
  (on b29 b24)
  (on b24 b34)
  (on b34 b35)
  (on b35 b2)
  (on b2 b19)
  (on b19 b39)
  (on b39 b1)
  (on b1 b6)
  (on b6 b7)
  (on b7 b26)
  (on b26 b28)
  (on b28 b41)
  (on b41 b25)
  (on b25 b20)
  (on b20 b36)
  (on b36 b13)
  (on b13 b17)
  (clear b15)
  (on-table b15)
  (clear b27)
  (on-table b5)
  (on b27 b5))
 (:goal (and
         (clear b42)
         (on-table b41)
         (on b42 b2)
         (on b2 b40)
         (on b40 b41)
         (clear b1)
         (on-table b36)
         (on b1 b33)
         (on b33 b7)
         (on b7 b39)
         (on b39 b18)
         (on b18 b35)
         (on b35 b36)
         (clear b27)
         (on-table b31)
         (on b27 b22)
         (on b22 b44)
         (on b44 b10)
         (on b10 b20)
         (on b20 b45)
         (on b45 b34)
         (on b34 b19)
         (on b19 b6)
         (on b6 b8)
         (on b8 b43)
         (on b43 b37)
         (on b37 b16)
         (on b16 b3)
         (on b3 b24)
         (on b24 b23)
         (on b23 b25)
         (on b25 b11)
         (on b11 b31)
         (clear b30)
         (on-table b30)
         (clear b26)
         (on-table b21)
         (on b26 b32)
         (on b32 b21)
         (clear b14)
         (on-table b15)
         (on b14 b28)
         (on b28 b29)
         (on b29 b13)
         (on b13 b15)
         (clear b38)
         (on-table b12)
         (on b38 b4)
         (on b4 b12)
         (clear b5)
         (on-table b9)
         (on b5 b17)
         (on b17 b9)))
             (:tasks (task0 (achieve-goals)))
)