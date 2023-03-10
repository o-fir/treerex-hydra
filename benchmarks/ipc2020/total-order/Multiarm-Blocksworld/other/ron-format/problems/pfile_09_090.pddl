(define
 (problem pfile_09_090)
 (:domain blocks)
 (:objects arm1 arm2 arm3 arm4 arm5 arm6 arm7 arm8 arm9 - ARM
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
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (hand-empty arm6)
  (hand-empty arm7)
  (hand-empty arm8)
  (hand-empty arm9)
  (clear b79)
  (on-table b83)
  (on b79 b40)
  (on b40 b24)
  (on b24 b30)
  (on b30 b66)
  (on b66 b72)
  (on b72 b18)
  (on b18 b20)
  (on b20 b13)
  (on b13 b12)
  (on b12 b73)
  (on b73 b55)
  (on b55 b31)
  (on b31 b57)
  (on b57 b90)
  (on b90 b65)
  (on b65 b27)
  (on b27 b86)
  (on b86 b14)
  (on b14 b68)
  (on b68 b59)
  (on b59 b84)
  (on b84 b60)
  (on b60 b9)
  (on b9 b67)
  (on b67 b49)
  (on b49 b33)
  (on b33 b4)
  (on b4 b10)
  (on b10 b88)
  (on b88 b83)
  (clear b23)
  (on-table b82)
  (on b23 b58)
  (on b58 b51)
  (on b51 b43)
  (on b43 b15)
  (on b15 b75)
  (on b75 b82)
  (clear b46)
  (on-table b78)
  (on b46 b16)
  (on b16 b52)
  (on b52 b26)
  (on b26 b17)
  (on b17 b3)
  (on b3 b48)
  (on b48 b62)
  (on b62 b81)
  (on b81 b85)
  (on b85 b78)
  (clear b19)
  (on-table b61)
  (on b19 b7)
  (on b7 b32)
  (on b32 b50)
  (on b50 b63)
  (on b63 b21)
  (on b21 b8)
  (on b8 b45)
  (on b45 b69)
  (on b69 b41)
  (on b41 b61)
  (clear b54)
  (on-table b54)
  (clear b53)
  (on-table b53)
  (clear b74)
  (on-table b44)
  (on b74 b44)
  (clear b29)
  (on-table b42)
  (on b29 b87)
  (on b87 b1)
  (on b1 b35)
  (on b35 b37)
  (on b37 b56)
  (on b56 b71)
  (on b71 b11)
  (on b11 b25)
  (on b25 b77)
  (on b77 b47)
  (on b47 b80)
  (on b80 b76)
  (on b76 b89)
  (on b89 b39)
  (on b39 b22)
  (on b22 b2)
  (on b2 b64)
  (on b64 b34)
  (on b34 b70)
  (on b70 b28)
  (on b28 b5)
  (on b5 b38)
  (on b38 b36)
  (on b36 b42)
  (clear b6)
  (on-table b6))
 (:goal (and
         (clear b40)
         (on-table b76)
         (on b40 b72)
         (on b72 b27)
         (on b27 b6)
         (on b6 b73)
         (on b73 b77)
         (on b77 b19)
         (on b19 b84)
         (on b84 b20)
         (on b20 b33)
         (on b33 b35)
         (on b35 b41)
         (on b41 b83)
         (on b83 b55)
         (on b55 b76)
         (clear b74)
         (on-table b70)
         (on b74 b45)
         (on b45 b80)
         (on b80 b51)
         (on b51 b14)
         (on b14 b5)
         (on b5 b24)
         (on b24 b70)
         (clear b11)
         (on-table b50)
         (on b11 b2)
         (on b2 b90)
         (on b90 b36)
         (on b36 b37)
         (on b37 b57)
         (on b57 b66)
         (on b66 b85)
         (on b85 b50)
         (clear b31)
         (on-table b31)
         (clear b48)
         (on-table b22)
         (on b48 b52)
         (on b52 b1)
         (on b1 b28)
         (on b28 b59)
         (on b59 b8)
         (on b8 b62)
         (on b62 b47)
         (on b47 b22)
         (clear b12)
         (on-table b15)
         (on b12 b29)
         (on b29 b23)
         (on b23 b32)
         (on b32 b34)
         (on b34 b18)
         (on b18 b15)
         (clear b68)
         (on-table b10)
         (on b68 b63)
         (on b63 b43)
         (on b43 b58)
         (on b58 b4)
         (on b4 b46)
         (on b46 b44)
         (on b44 b13)
         (on b13 b25)
         (on b25 b86)
         (on b86 b69)
         (on b69 b89)
         (on b89 b60)
         (on b60 b7)
         (on b7 b71)
         (on b71 b64)
         (on b64 b10)
         (clear b21)
         (on-table b9)
         (on b21 b54)
         (on b54 b42)
         (on b42 b49)
         (on b49 b26)
         (on b26 b39)
         (on b39 b79)
         (on b79 b53)
         (on b53 b9)
         (clear b87)
         (on-table b3)
         (on b87 b65)
         (on b65 b78)
         (on b78 b88)
         (on b88 b82)
         (on b82 b38)
         (on b38 b16)
         (on b16 b67)
         (on b67 b81)
         (on b81 b17)
         (on b17 b61)
         (on b61 b56)
         (on b56 b30)
         (on b30 b75)
         (on b75 b3)))
                                      (:tasks (task0 (achieve-goals arm1)))
                                      (:tasks (task1 (achieve-goals arm2)))
                                      (:tasks (task2 (achieve-goals arm3)))
                                      (:tasks (task3 (achieve-goals arm4)))
                                      (:tasks (task4 (achieve-goals arm5)))
                                      (:tasks (task5 (achieve-goals arm6)))
                                      (:tasks (task6 (achieve-goals arm7)))
                                      (:tasks (task7 (achieve-goals arm8)))
                                      (:tasks (task8 (achieve-goals arm9)))
)