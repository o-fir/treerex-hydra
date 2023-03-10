(define
 (problem pfile_06_080)
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
           b56
           b57
           b58
           b59
           b60
           b61
           b62
           b63
           b64
           b65
           b66
           b67
           b68
           b69
           b70
           b71
           b72
           b73
           b74
           b75
           b76
           b77
           b78
           b79
           b80
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (hand-empty arm6)
  (clear b56)
  (on-table b55)
  (on b56 b31)
  (on b31 b66)
  (on b66 b23)
  (on b23 b2)
  (on b2 b43)
  (on b43 b27)
  (on b27 b55)
  (clear b37)
  (on-table b51)
  (on b37 b80)
  (on b80 b14)
  (on b14 b61)
  (on b61 b48)
  (on b48 b39)
  (on b39 b51)
  (clear b34)
  (on-table b45)
  (on b34 b29)
  (on b29 b12)
  (on b12 b68)
  (on b68 b64)
  (on b64 b71)
  (on b71 b62)
  (on b62 b38)
  (on b38 b67)
  (on b67 b25)
  (on b25 b8)
  (on b8 b45)
  (clear b40)
  (on-table b40)
  (clear b11)
  (on-table b32)
  (on b11 b22)
  (on b22 b75)
  (on b75 b28)
  (on b28 b13)
  (on b13 b42)
  (on b42 b17)
  (on b17 b59)
  (on b59 b30)
  (on b30 b4)
  (on b4 b19)
  (on b19 b52)
  (on b52 b36)
  (on b36 b32)
  (clear b69)
  (on-table b18)
  (on b69 b7)
  (on b7 b72)
  (on b72 b9)
  (on b9 b78)
  (on b78 b18)
  (clear b60)
  (on-table b15)
  (on b60 b44)
  (on b44 b15)
  (clear b24)
  (on-table b10)
  (on b24 b58)
  (on b58 b26)
  (on b26 b65)
  (on b65 b47)
  (on b47 b5)
  (on b5 b53)
  (on b53 b79)
  (on b79 b46)
  (on b46 b33)
  (on b33 b73)
  (on b73 b20)
  (on b20 b77)
  (on b77 b41)
  (on b41 b3)
  (on b3 b49)
  (on b49 b76)
  (on b76 b63)
  (on b63 b50)
  (on b50 b70)
  (on b70 b54)
  (on b54 b1)
  (on b1 b57)
  (on b57 b16)
  (on b16 b74)
  (on b74 b6)
  (on b6 b21)
  (on b21 b35)
  (on b35 b10))
 (:goal (and
         (clear b9)
         (on-table b79)
         (on b9 b52)
         (on b52 b58)
         (on b58 b14)
         (on b14 b47)
         (on b47 b39)
         (on b39 b8)
         (on b8 b29)
         (on b29 b50)
         (on b50 b79)
         (clear b62)
         (on-table b74)
         (on b62 b25)
         (on b25 b76)
         (on b76 b22)
         (on b22 b70)
         (on b70 b74)
         (clear b36)
         (on-table b68)
         (on b36 b19)
         (on b19 b75)
         (on b75 b10)
         (on b10 b11)
         (on b11 b64)
         (on b64 b7)
         (on b7 b12)
         (on b12 b33)
         (on b33 b65)
         (on b65 b68)
         (clear b78)
         (on-table b45)
         (on b78 b42)
         (on b42 b26)
         (on b26 b45)
         (clear b32)
         (on-table b43)
         (on b32 b72)
         (on b72 b67)
         (on b67 b20)
         (on b20 b53)
         (on b53 b6)
         (on b6 b69)
         (on b69 b51)
         (on b51 b40)
         (on b40 b59)
         (on b59 b66)
         (on b66 b28)
         (on b28 b37)
         (on b37 b3)
         (on b3 b13)
         (on b13 b61)
         (on b61 b4)
         (on b4 b43)
         (clear b15)
         (on-table b38)
         (on b15 b60)
         (on b60 b55)
         (on b55 b38)
         (clear b18)
         (on-table b34)
         (on b18 b35)
         (on b35 b63)
         (on b63 b27)
         (on b27 b31)
         (on b31 b41)
         (on b41 b57)
         (on b57 b54)
         (on b54 b80)
         (on b80 b1)
         (on b1 b34)
         (clear b56)
         (on-table b30)
         (on b56 b77)
         (on b77 b2)
         (on b2 b30)
         (clear b71)
         (on-table b17)
         (on b71 b24)
         (on b24 b73)
         (on b73 b5)
         (on b5 b49)
         (on b49 b21)
         (on b21 b46)
         (on b46 b48)
         (on b48 b23)
         (on b23 b17)
         (clear b44)
         (on-table b16)
         (on b44 b16)))
                    (:tasks (task0 (achieve-goals arm1)))
                    (:tasks (task1 (achieve-goals arm2)))
                    (:tasks (task2 (achieve-goals arm3)))
                    (:tasks (task3 (achieve-goals arm4)))
                    (:tasks (task4 (achieve-goals arm5)))
                    (:tasks (task5 (achieve-goals arm6)))
)