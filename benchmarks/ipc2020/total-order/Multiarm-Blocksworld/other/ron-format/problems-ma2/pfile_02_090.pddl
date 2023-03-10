(define
 (problem pfile_02_090)
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
           b86
           b87
           b88
           b89
           b90
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (clear b18)
  (on-table b75)
  (on b18 b55)
  (on b55 b69)
  (on b69 b36)
  (on b36 b42)
  (on b42 b64)
  (on b64 b65)
  (on b65 b80)
  (on b80 b51)
  (on b51 b30)
  (on b30 b61)
  (on b61 b48)
  (on b48 b62)
  (on b62 b86)
  (on b86 b6)
  (on b6 b57)
  (on b57 b76)
  (on b76 b37)
  (on b37 b67)
  (on b67 b71)
  (on b71 b72)
  (on b72 b16)
  (on b16 b34)
  (on b34 b83)
  (on b83 b49)
  (on b49 b19)
  (on b19 b33)
  (on b33 b54)
  (on b54 b89)
  (on b89 b14)
  (on b14 b9)
  (on b9 b75)
  (clear b78)
  (on-table b53)
  (on b78 b47)
  (on b47 b4)
  (on b4 b44)
  (on b44 b17)
  (on b17 b60)
  (on b60 b7)
  (on b7 b27)
  (on b27 b53)
  (clear b41)
  (on-table b22)
  (on b41 b56)
  (on b56 b8)
  (on b8 b45)
  (on b45 b79)
  (on b79 b40)
  (on b40 b25)
  (on b25 b21)
  (on b21 b50)
  (on b50 b87)
  (on b87 b5)
  (on b5 b12)
  (on b12 b81)
  (on b81 b38)
  (on b38 b11)
  (on b11 b46)
  (on b46 b63)
  (on b63 b77)
  (on b77 b88)
  (on b88 b85)
  (on b85 b24)
  (on b24 b68)
  (on b68 b1)
  (on b1 b22)
  (clear b73)
  (on-table b2)
  (on b73 b35)
  (on b35 b29)
  (on b29 b82)
  (on b82 b43)
  (on b43 b23)
  (on b23 b3)
  (on b3 b39)
  (on b39 b52)
  (on b52 b26)
  (on b26 b74)
  (on b74 b58)
  (on b58 b28)
  (on b28 b32)
  (on b32 b13)
  (on b13 b31)
  (on b31 b59)
  (on b59 b20)
  (on b20 b70)
  (on b70 b10)
  (on b10 b66)
  (on b66 b84)
  (on b84 b15)
  (on b15 b90)
  (on b90 b2))
 (:goal (and
         (clear b64)
         (on-table b80)
         (on b64 b66)
         (on b66 b82)
         (on b82 b30)
         (on b30 b36)
         (on b36 b23)
         (on b23 b55)
         (on b55 b74)
         (on b74 b21)
         (on b21 b31)
         (on b31 b56)
         (on b56 b63)
         (on b63 b20)
         (on b20 b48)
         (on b48 b89)
         (on b89 b26)
         (on b26 b24)
         (on b24 b52)
         (on b52 b88)
         (on b88 b50)
         (on b50 b4)
         (on b4 b28)
         (on b28 b61)
         (on b61 b81)
         (on b81 b41)
         (on b41 b1)
         (on b1 b6)
         (on b6 b43)
         (on b43 b19)
         (on b19 b17)
         (on b17 b65)
         (on b65 b35)
         (on b35 b59)
         (on b59 b27)
         (on b27 b72)
         (on b72 b85)
         (on b85 b78)
         (on b78 b40)
         (on b40 b67)
         (on b67 b49)
         (on b49 b80)
         (clear b83)
         (on-table b79)
         (on b83 b47)
         (on b47 b22)
         (on b22 b39)
         (on b39 b90)
         (on b90 b46)
         (on b46 b33)
         (on b33 b51)
         (on b51 b5)
         (on b5 b70)
         (on b70 b87)
         (on b87 b42)
         (on b42 b71)
         (on b71 b84)
         (on b84 b79)
         (clear b68)
         (on-table b68)
         (clear b77)
         (on-table b44)
         (on b77 b76)
         (on b76 b2)
         (on b2 b73)
         (on b73 b7)
         (on b7 b32)
         (on b32 b8)
         (on b8 b37)
         (on b37 b12)
         (on b12 b44)
         (clear b69)
         (on-table b15)
         (on b69 b11)
         (on b11 b75)
         (on b75 b14)
         (on b14 b13)
         (on b13 b29)
         (on b29 b58)
         (on b58 b53)
         (on b53 b10)
         (on b10 b25)
         (on b25 b3)
         (on b3 b86)
         (on b86 b60)
         (on b60 b54)
         (on b54 b15)
         (clear b16)
         (on-table b9)
         (on b16 b34)
         (on b34 b18)
         (on b18 b62)
         (on b62 b57)
         (on b57 b45)
         (on b45 b38)
         (on b38 b9)))
                               (:tasks (task0 (achieve-goals arm1)))
                               (:tasks (task1 (achieve-goals arm2)))
)