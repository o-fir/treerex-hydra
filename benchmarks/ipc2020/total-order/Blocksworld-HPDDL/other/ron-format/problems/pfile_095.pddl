(define
 (problem pfile_095)
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
           b91
           b92
           b93
           b94
           b95
           - BLOCK)
 (:init
  (hand-empty)
  (clear b45)
  (on-table b85)
  (on b45 b15)
  (on b15 b14)
  (on b14 b61)
  (on b61 b29)
  (on b29 b75)
  (on b75 b24)
  (on b24 b33)
  (on b33 b38)
  (on b38 b85)
  (clear b53)
  (on-table b83)
  (on b53 b81)
  (on b81 b67)
  (on b67 b35)
  (on b35 b64)
  (on b64 b63)
  (on b63 b65)
  (on b65 b34)
  (on b34 b77)
  (on b77 b28)
  (on b28 b20)
  (on b20 b37)
  (on b37 b72)
  (on b72 b91)
  (on b91 b6)
  (on b6 b83)
  (clear b30)
  (on-table b69)
  (on b30 b78)
  (on b78 b70)
  (on b70 b60)
  (on b60 b95)
  (on b95 b69)
  (clear b94)
  (on-table b55)
  (on b94 b5)
  (on b5 b18)
  (on b18 b84)
  (on b84 b2)
  (on b2 b76)
  (on b76 b87)
  (on b87 b55)
  (clear b54)
  (on-table b52)
  (on b54 b32)
  (on b32 b1)
  (on b1 b40)
  (on b40 b79)
  (on b79 b16)
  (on b16 b42)
  (on b42 b7)
  (on b7 b88)
  (on b88 b80)
  (on b80 b52)
  (clear b73)
  (on-table b48)
  (on b73 b51)
  (on b51 b13)
  (on b13 b50)
  (on b50 b41)
  (on b41 b86)
  (on b86 b92)
  (on b92 b36)
  (on b36 b23)
  (on b23 b90)
  (on b90 b8)
  (on b8 b9)
  (on b9 b12)
  (on b12 b74)
  (on b74 b27)
  (on b27 b22)
  (on b22 b4)
  (on b4 b62)
  (on b62 b66)
  (on b66 b71)
  (on b71 b58)
  (on b58 b11)
  (on b11 b49)
  (on b49 b93)
  (on b93 b89)
  (on b89 b26)
  (on b26 b82)
  (on b82 b10)
  (on b10 b56)
  (on b56 b48)
  (clear b59)
  (on-table b47)
  (on b59 b43)
  (on b43 b57)
  (on b57 b44)
  (on b44 b3)
  (on b3 b25)
  (on b25 b47)
  (clear b68)
  (on-table b46)
  (on b68 b39)
  (on b39 b46)
  (clear b21)
  (on-table b31)
  (on b21 b31)
  (clear b17)
  (on-table b19)
  (on b17 b19))
 (:goal (and
         (clear b90)
         (on-table b95)
         (on b90 b57)
         (on b57 b92)
         (on b92 b72)
         (on b72 b47)
         (on b47 b79)
         (on b79 b44)
         (on b44 b91)
         (on b91 b67)
         (on b67 b51)
         (on b51 b38)
         (on b38 b41)
         (on b41 b58)
         (on b58 b26)
         (on b26 b95)
         (clear b77)
         (on-table b82)
         (on b77 b60)
         (on b60 b45)
         (on b45 b1)
         (on b1 b9)
         (on b9 b86)
         (on b86 b75)
         (on b75 b54)
         (on b54 b88)
         (on b88 b29)
         (on b29 b83)
         (on b83 b27)
         (on b27 b49)
         (on b49 b82)
         (clear b12)
         (on-table b61)
         (on b12 b18)
         (on b18 b65)
         (on b65 b36)
         (on b36 b22)
         (on b22 b78)
         (on b78 b93)
         (on b93 b17)
         (on b17 b3)
         (on b3 b68)
         (on b68 b76)
         (on b76 b42)
         (on b42 b25)
         (on b25 b11)
         (on b11 b39)
         (on b39 b2)
         (on b2 b37)
         (on b37 b20)
         (on b20 b53)
         (on b53 b50)
         (on b50 b64)
         (on b64 b30)
         (on b30 b61)
         (clear b70)
         (on-table b40)
         (on b70 b71)
         (on b71 b31)
         (on b31 b56)
         (on b56 b73)
         (on b73 b13)
         (on b13 b69)
         (on b69 b28)
         (on b28 b48)
         (on b48 b7)
         (on b7 b4)
         (on b4 b16)
         (on b16 b55)
         (on b55 b40)
         (clear b8)
         (on-table b10)
         (on b8 b32)
         (on b32 b43)
         (on b43 b35)
         (on b35 b89)
         (on b89 b19)
         (on b19 b94)
         (on b94 b52)
         (on b52 b24)
         (on b24 b87)
         (on b87 b74)
         (on b74 b62)
         (on b62 b81)
         (on b81 b85)
         (on b85 b15)
         (on b15 b80)
         (on b80 b63)
         (on b63 b21)
         (on b21 b34)
         (on b34 b66)
         (on b66 b5)
         (on b5 b23)
         (on b23 b59)
         (on b59 b14)
         (on b14 b84)
         (on b84 b46)
         (on b46 b33)
         (on b33 b6)
         (on b6 b10)))
             (:tasks (task0 (achieve-goals)))
)