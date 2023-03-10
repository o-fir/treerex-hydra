(define
 (problem pfile_02_055)
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
           b51
           b52
           b53
           b54
           b55
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (clear b1)
  (on-table b46)
  (on b1 b30)
  (on b30 b12)
  (on b12 b49)
  (on b49 b54)
  (on b54 b46)
  (clear b53)
  (on-table b33)
  (on b53 b38)
  (on b38 b6)
  (on b6 b4)
  (on b4 b7)
  (on b7 b5)
  (on b5 b9)
  (on b9 b52)
  (on b52 b51)
  (on b51 b40)
  (on b40 b33)
  (clear b19)
  (on-table b27)
  (on b19 b45)
  (on b45 b16)
  (on b16 b10)
  (on b10 b48)
  (on b48 b43)
  (on b43 b31)
  (on b31 b29)
  (on b29 b32)
  (on b32 b14)
  (on b14 b27)
  (clear b39)
  (on-table b24)
  (on b39 b42)
  (on b42 b28)
  (on b28 b50)
  (on b50 b24)
  (clear b22)
  (on-table b22)
  (clear b17)
  (on-table b21)
  (on b17 b21)
  (clear b23)
  (on-table b11)
  (on b23 b20)
  (on b20 b18)
  (on b18 b41)
  (on b41 b34)
  (on b34 b13)
  (on b13 b26)
  (on b26 b55)
  (on b55 b25)
  (on b25 b36)
  (on b36 b47)
  (on b47 b2)
  (on b2 b8)
  (on b8 b44)
  (on b44 b3)
  (on b3 b37)
  (on b37 b35)
  (on b35 b15)
  (on b15 b11))
 (:goal (and
         (clear b38)
         (on-table b55)
         (on b38 b20)
         (on b20 b16)
         (on b16 b52)
         (on b52 b11)
         (on b11 b12)
         (on b12 b32)
         (on b32 b37)
         (on b37 b18)
         (on b18 b6)
         (on b6 b39)
         (on b39 b44)
         (on b44 b55)
         (clear b36)
         (on-table b49)
         (on b36 b41)
         (on b41 b49)
         (clear b28)
         (on-table b28)
         (clear b33)
         (on-table b22)
         (on b33 b25)
         (on b25 b19)
         (on b19 b47)
         (on b47 b17)
         (on b17 b22)
         (clear b35)
         (on-table b13)
         (on b35 b46)
         (on b46 b54)
         (on b54 b14)
         (on b14 b26)
         (on b26 b24)
         (on b24 b43)
         (on b43 b13)
         (clear b45)
         (on-table b10)
         (on b45 b3)
         (on b3 b15)
         (on b15 b34)
         (on b34 b5)
         (on b5 b48)
         (on b48 b4)
         (on b4 b30)
         (on b30 b23)
         (on b23 b27)
         (on b27 b10)
         (clear b50)
         (on-table b9)
         (on b50 b29)
         (on b29 b1)
         (on b1 b21)
         (on b21 b7)
         (on b7 b42)
         (on b42 b31)
         (on b31 b2)
         (on b2 b53)
         (on b53 b40)
         (on b40 b9)
         (clear b51)
         (on-table b8)
         (on b51 b8)))
                      (:tasks (task0 (achieve-goals arm1)))
                      (:tasks (task1 (achieve-goals arm2)))
)