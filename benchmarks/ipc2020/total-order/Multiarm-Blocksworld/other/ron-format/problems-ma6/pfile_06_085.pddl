(define
 (problem pfile_06_085)
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
           b81
           b82
           b83
           b84
           b85
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (hand-empty arm6)
  (clear b74)
  (on-table b84)
  (on b74 b7)
  (on b7 b15)
  (on b15 b21)
  (on b21 b44)
  (on b44 b31)
  (on b31 b38)
  (on b38 b54)
  (on b54 b12)
  (on b12 b73)
  (on b73 b46)
  (on b46 b75)
  (on b75 b70)
  (on b70 b58)
  (on b58 b53)
  (on b53 b24)
  (on b24 b68)
  (on b68 b84)
  (clear b41)
  (on-table b79)
  (on b41 b40)
  (on b40 b77)
  (on b77 b71)
  (on b71 b79)
  (clear b14)
  (on-table b69)
  (on b14 b27)
  (on b27 b69)
  (clear b60)
  (on-table b66)
  (on b60 b66)
  (clear b47)
  (on-table b45)
  (on b47 b45)
  (clear b32)
  (on-table b36)
  (on b32 b81)
  (on b81 b55)
  (on b55 b76)
  (on b76 b83)
  (on b83 b16)
  (on b16 b4)
  (on b4 b33)
  (on b33 b62)
  (on b62 b35)
  (on b35 b59)
  (on b59 b51)
  (on b51 b17)
  (on b17 b85)
  (on b85 b80)
  (on b80 b8)
  (on b8 b78)
  (on b78 b26)
  (on b26 b42)
  (on b42 b82)
  (on b82 b28)
  (on b28 b2)
  (on b2 b22)
  (on b22 b57)
  (on b57 b52)
  (on b52 b23)
  (on b23 b6)
  (on b6 b67)
  (on b67 b72)
  (on b72 b10)
  (on b10 b36)
  (clear b20)
  (on-table b34)
  (on b20 b34)
  (clear b56)
  (on-table b25)
  (on b56 b1)
  (on b1 b25)
  (clear b30)
  (on-table b9)
  (on b30 b11)
  (on b11 b5)
  (on b5 b49)
  (on b49 b13)
  (on b13 b29)
  (on b29 b64)
  (on b64 b18)
  (on b18 b19)
  (on b19 b61)
  (on b61 b39)
  (on b39 b50)
  (on b50 b48)
  (on b48 b43)
  (on b43 b63)
  (on b63 b3)
  (on b3 b37)
  (on b37 b65)
  (on b65 b9))
 (:goal (and
         (clear b13)
         (on-table b83)
         (on b13 b38)
         (on b38 b19)
         (on b19 b27)
         (on b27 b63)
         (on b63 b20)
         (on b20 b34)
         (on b34 b46)
         (on b46 b83)
         (clear b81)
         (on-table b71)
         (on b81 b76)
         (on b76 b44)
         (on b44 b47)
         (on b47 b56)
         (on b56 b36)
         (on b36 b1)
         (on b1 b9)
         (on b9 b71)
         (clear b41)
         (on-table b66)
         (on b41 b32)
         (on b32 b80)
         (on b80 b55)
         (on b55 b78)
         (on b78 b28)
         (on b28 b11)
         (on b11 b58)
         (on b58 b82)
         (on b82 b84)
         (on b84 b66)
         (clear b23)
         (on-table b64)
         (on b23 b67)
         (on b67 b7)
         (on b7 b8)
         (on b8 b79)
         (on b79 b24)
         (on b24 b62)
         (on b62 b10)
         (on b10 b70)
         (on b70 b64)
         (clear b26)
         (on-table b61)
         (on b26 b61)
         (clear b40)
         (on-table b50)
         (on b40 b5)
         (on b5 b69)
         (on b69 b12)
         (on b12 b65)
         (on b65 b15)
         (on b15 b75)
         (on b75 b42)
         (on b42 b53)
         (on b53 b49)
         (on b49 b73)
         (on b73 b3)
         (on b3 b60)
         (on b60 b33)
         (on b33 b50)
         (clear b39)
         (on-table b48)
         (on b39 b18)
         (on b18 b30)
         (on b30 b31)
         (on b31 b74)
         (on b74 b16)
         (on b16 b48)
         (clear b54)
         (on-table b37)
         (on b54 b17)
         (on b17 b43)
         (on b43 b14)
         (on b14 b85)
         (on b85 b25)
         (on b25 b2)
         (on b2 b37)
         (clear b35)
         (on-table b35)
         (clear b77)
         (on-table b29)
         (on b77 b4)
         (on b4 b72)
         (on b72 b6)
         (on b6 b29)
         (clear b21)
         (on-table b22)
         (on b21 b52)
         (on b52 b57)
         (on b57 b51)
         (on b51 b68)
         (on b68 b45)
         (on b45 b59)
         (on b59 b22)))
                    (:tasks (task0 (achieve-goals arm1)))
                    (:tasks (task1 (achieve-goals arm2)))
                    (:tasks (task2 (achieve-goals arm3)))
                    (:tasks (task3 (achieve-goals arm4)))
                    (:tasks (task4 (achieve-goals arm5)))
                    (:tasks (task5 (achieve-goals arm6)))
)