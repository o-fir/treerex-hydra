(define
 (problem pfile_085)
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
           - BLOCK)
 (:init
  (hand-empty)
  (clear b27)
  (on-table b77)
  (on b27 b77)
  (clear b22)
  (on-table b73)
  (on b22 b73)
  (clear b71)
  (on-table b71)
  (clear b83)
  (on-table b45)
  (on b83 b12)
  (on b12 b60)
  (on b60 b28)
  (on b28 b10)
  (on b10 b21)
  (on b21 b70)
  (on b70 b19)
  (on b19 b67)
  (on b67 b18)
  (on b18 b32)
  (on b32 b45)
  (clear b65)
  (on-table b35)
  (on b65 b53)
  (on b53 b41)
  (on b41 b80)
  (on b80 b35)
  (clear b79)
  (on-table b30)
  (on b79 b33)
  (on b33 b81)
  (on b81 b49)
  (on b49 b17)
  (on b17 b54)
  (on b54 b69)
  (on b69 b40)
  (on b40 b3)
  (on b3 b4)
  (on b4 b5)
  (on b5 b31)
  (on b31 b50)
  (on b50 b74)
  (on b74 b8)
  (on b8 b30)
  (clear b68)
  (on-table b29)
  (on b68 b55)
  (on b55 b29)
  (clear b38)
  (on-table b23)
  (on b38 b23)
  (clear b58)
  (on-table b20)
  (on b58 b9)
  (on b9 b82)
  (on b82 b43)
  (on b43 b52)
  (on b52 b57)
  (on b57 b7)
  (on b7 b75)
  (on b75 b36)
  (on b36 b48)
  (on b48 b34)
  (on b34 b76)
  (on b76 b61)
  (on b61 b39)
  (on b39 b72)
  (on b72 b20)
  (clear b15)
  (on-table b14)
  (on b15 b66)
  (on b66 b44)
  (on b44 b78)
  (on b78 b24)
  (on b24 b37)
  (on b37 b64)
  (on b64 b62)
  (on b62 b56)
  (on b56 b85)
  (on b85 b42)
  (on b42 b14)
  (clear b46)
  (on-table b11)
  (on b46 b2)
  (on b2 b16)
  (on b16 b26)
  (on b26 b11)
  (clear b25)
  (on-table b6)
  (on b25 b84)
  (on b84 b51)
  (on b51 b59)
  (on b59 b13)
  (on b13 b47)
  (on b47 b63)
  (on b63 b1)
  (on b1 b6))
 (:goal (and
         (clear b20)
         (on-table b79)
         (on b20 b17)
         (on b17 b29)
         (on b29 b78)
         (on b78 b64)
         (on b64 b65)
         (on b65 b81)
         (on b81 b9)
         (on b9 b5)
         (on b5 b53)
         (on b53 b27)
         (on b27 b79)
         (clear b57)
         (on-table b57)
         (clear b32)
         (on-table b46)
         (on b32 b7)
         (on b7 b36)
         (on b36 b68)
         (on b68 b1)
         (on b1 b61)
         (on b61 b3)
         (on b3 b62)
         (on b62 b45)
         (on b45 b25)
         (on b25 b70)
         (on b70 b85)
         (on b85 b33)
         (on b33 b40)
         (on b40 b58)
         (on b58 b23)
         (on b23 b21)
         (on b21 b59)
         (on b59 b50)
         (on b50 b52)
         (on b52 b54)
         (on b54 b76)
         (on b76 b6)
         (on b6 b48)
         (on b48 b38)
         (on b38 b46)
         (clear b35)
         (on-table b35)
         (clear b75)
         (on-table b19)
         (on b75 b2)
         (on b2 b84)
         (on b84 b69)
         (on b69 b16)
         (on b16 b19)
         (clear b34)
         (on-table b15)
         (on b34 b26)
         (on b26 b15)
         (clear b37)
         (on-table b13)
         (on b37 b73)
         (on b73 b49)
         (on b49 b51)
         (on b51 b47)
         (on b47 b41)
         (on b41 b77)
         (on b77 b14)
         (on b14 b13)
         (clear b39)
         (on-table b12)
         (on b39 b55)
         (on b55 b74)
         (on b74 b22)
         (on b22 b44)
         (on b44 b31)
         (on b31 b28)
         (on b28 b12)
         (clear b71)
         (on-table b11)
         (on b71 b10)
         (on b10 b18)
         (on b18 b66)
         (on b66 b83)
         (on b83 b56)
         (on b56 b60)
         (on b60 b67)
         (on b67 b4)
         (on b4 b42)
         (on b42 b24)
         (on b24 b8)
         (on b8 b30)
         (on b30 b43)
         (on b43 b63)
         (on b63 b80)
         (on b80 b72)
         (on b72 b82)
         (on b82 b11)))
             (:tasks (task0 (achieve-goals)))
)