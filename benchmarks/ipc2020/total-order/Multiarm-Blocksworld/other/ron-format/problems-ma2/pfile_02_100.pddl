(define
 (problem pfile_02_100)
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
           b91
           b92
           b93
           b94
           b95
           b96
           b97
           b98
           b99
           b100
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (clear b73)
  (on-table b78)
  (on b73 b92)
  (on b92 b32)
  (on b32 b79)
  (on b79 b50)
  (on b50 b39)
  (on b39 b5)
  (on b5 b68)
  (on b68 b90)
  (on b90 b78)
  (clear b54)
  (on-table b77)
  (on b54 b56)
  (on b56 b94)
  (on b94 b15)
  (on b15 b89)
  (on b89 b14)
  (on b14 b42)
  (on b42 b33)
  (on b33 b65)
  (on b65 b64)
  (on b64 b52)
  (on b52 b80)
  (on b80 b47)
  (on b47 b95)
  (on b95 b61)
  (on b61 b77)
  (clear b7)
  (on-table b72)
  (on b7 b10)
  (on b10 b19)
  (on b19 b30)
  (on b30 b36)
  (on b36 b72)
  (clear b48)
  (on-table b48)
  (clear b12)
  (on-table b43)
  (on b12 b20)
  (on b20 b70)
  (on b70 b6)
  (on b6 b99)
  (on b99 b31)
  (on b31 b43)
  (clear b21)
  (on-table b17)
  (on b21 b55)
  (on b55 b3)
  (on b3 b11)
  (on b11 b83)
  (on b83 b59)
  (on b59 b51)
  (on b51 b60)
  (on b60 b57)
  (on b57 b37)
  (on b37 b25)
  (on b25 b100)
  (on b100 b91)
  (on b91 b38)
  (on b38 b35)
  (on b35 b17)
  (clear b16)
  (on-table b13)
  (on b16 b81)
  (on b81 b45)
  (on b45 b98)
  (on b98 b76)
  (on b76 b63)
  (on b63 b18)
  (on b18 b67)
  (on b67 b13)
  (clear b28)
  (on-table b9)
  (on b28 b93)
  (on b93 b85)
  (on b85 b69)
  (on b69 b66)
  (on b66 b88)
  (on b88 b71)
  (on b71 b53)
  (on b53 b41)
  (on b41 b8)
  (on b8 b40)
  (on b40 b34)
  (on b34 b4)
  (on b4 b58)
  (on b58 b86)
  (on b86 b97)
  (on b97 b27)
  (on b27 b46)
  (on b46 b74)
  (on b74 b24)
  (on b24 b82)
  (on b82 b84)
  (on b84 b2)
  (on b2 b87)
  (on b87 b22)
  (on b22 b29)
  (on b29 b1)
  (on b1 b44)
  (on b44 b96)
  (on b96 b75)
  (on b75 b62)
  (on b62 b49)
  (on b49 b23)
  (on b23 b26)
  (on b26 b9))
 (:goal (and
         (clear b31)
         (on-table b81)
         (on b31 b35)
         (on b35 b70)
         (on b70 b42)
         (on b42 b49)
         (on b49 b46)
         (on b46 b8)
         (on b8 b27)
         (on b27 b18)
         (on b18 b62)
         (on b62 b59)
         (on b59 b51)
         (on b51 b89)
         (on b89 b40)
         (on b40 b72)
         (on b72 b33)
         (on b33 b7)
         (on b7 b98)
         (on b98 b66)
         (on b66 b6)
         (on b6 b45)
         (on b45 b96)
         (on b96 b56)
         (on b56 b10)
         (on b10 b65)
         (on b65 b78)
         (on b78 b81)
         (clear b57)
         (on-table b69)
         (on b57 b76)
         (on b76 b43)
         (on b43 b38)
         (on b38 b93)
         (on b93 b67)
         (on b67 b19)
         (on b19 b34)
         (on b34 b32)
         (on b32 b3)
         (on b3 b69)
         (clear b17)
         (on-table b64)
         (on b17 b54)
         (on b54 b75)
         (on b75 b11)
         (on b11 b2)
         (on b2 b39)
         (on b39 b50)
         (on b50 b58)
         (on b58 b24)
         (on b24 b22)
         (on b22 b79)
         (on b79 b91)
         (on b91 b92)
         (on b92 b4)
         (on b4 b60)
         (on b60 b99)
         (on b99 b73)
         (on b73 b63)
         (on b63 b14)
         (on b14 b64)
         (clear b80)
         (on-table b61)
         (on b80 b23)
         (on b23 b100)
         (on b100 b30)
         (on b30 b29)
         (on b29 b28)
         (on b28 b61)
         (clear b37)
         (on-table b53)
         (on b37 b86)
         (on b86 b47)
         (on b47 b74)
         (on b74 b41)
         (on b41 b85)
         (on b85 b21)
         (on b21 b13)
         (on b13 b44)
         (on b44 b25)
         (on b25 b20)
         (on b20 b68)
         (on b68 b55)
         (on b55 b12)
         (on b12 b94)
         (on b94 b52)
         (on b52 b71)
         (on b71 b77)
         (on b77 b84)
         (on b84 b53)
         (clear b1)
         (on-table b26)
         (on b1 b90)
         (on b90 b15)
         (on b15 b48)
         (on b48 b83)
         (on b83 b26)
         (clear b97)
         (on-table b9)
         (on b97 b82)
         (on b82 b36)
         (on b36 b88)
         (on b88 b87)
         (on b87 b9)
         (clear b16)
         (on-table b5)
         (on b16 b95)
         (on b95 b5)))
                      (:tasks (task0 (achieve-goals arm1)))
                      (:tasks (task1 (achieve-goals arm2)))
         )