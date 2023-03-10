(define
 (problem pfile_04_075)
 (:domain blocks)
 (:objects arm1 arm2 arm3 arm4 - ARM
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (clear b17)
  (on-table b68)
  (on b17 b28)
  (on b28 b63)
  (on b63 b22)
  (on b22 b20)
  (on b20 b12)
  (on b12 b72)
  (on b72 b54)
  (on b54 b31)
  (on b31 b70)
  (on b70 b19)
  (on b19 b44)
  (on b44 b51)
  (on b51 b43)
  (on b43 b36)
  (on b36 b68)
  (clear b49)
  (on-table b66)
  (on b49 b66)
  (clear b61)
  (on-table b61)
  (clear b50)
  (on-table b56)
  (on b50 b3)
  (on b3 b33)
  (on b33 b57)
  (on b57 b60)
  (on b60 b64)
  (on b64 b56)
  (clear b35)
  (on-table b46)
  (on b35 b75)
  (on b75 b42)
  (on b42 b53)
  (on b53 b67)
  (on b67 b9)
  (on b9 b23)
  (on b23 b52)
  (on b52 b46)
  (clear b58)
  (on-table b37)
  (on b58 b62)
  (on b62 b4)
  (on b4 b8)
  (on b8 b1)
  (on b1 b29)
  (on b29 b25)
  (on b25 b73)
  (on b73 b41)
  (on b41 b11)
  (on b11 b27)
  (on b27 b55)
  (on b55 b30)
  (on b30 b15)
  (on b15 b32)
  (on b32 b48)
  (on b48 b16)
  (on b16 b45)
  (on b45 b69)
  (on b69 b37)
  (clear b47)
  (on-table b13)
  (on b47 b7)
  (on b7 b74)
  (on b74 b65)
  (on b65 b26)
  (on b26 b13)
  (clear b24)
  (on-table b10)
  (on b24 b38)
  (on b38 b59)
  (on b59 b10)
  (clear b34)
  (on-table b6)
  (on b34 b6)
  (clear b14)
  (on-table b5)
  (on b14 b21)
  (on b21 b18)
  (on b18 b71)
  (on b71 b40)
  (on b40 b39)
  (on b39 b5)
  (clear b2)
  (on-table b2))
 (:goal (and
         (clear b39)
         (on-table b73)
         (on b39 b73)
         (clear b16)
         (on-table b72)
         (on b16 b64)
         (on b64 b66)
         (on b66 b22)
         (on b22 b26)
         (on b26 b69)
         (on b69 b5)
         (on b5 b2)
         (on b2 b43)
         (on b43 b52)
         (on b52 b44)
         (on b44 b17)
         (on b17 b9)
         (on b9 b72)
         (clear b29)
         (on-table b71)
         (on b29 b10)
         (on b10 b35)
         (on b35 b25)
         (on b25 b63)
         (on b63 b49)
         (on b49 b8)
         (on b8 b41)
         (on b41 b34)
         (on b34 b56)
         (on b56 b54)
         (on b54 b74)
         (on b74 b36)
         (on b36 b7)
         (on b7 b30)
         (on b30 b53)
         (on b53 b31)
         (on b31 b6)
         (on b6 b57)
         (on b57 b71)
         (clear b28)
         (on-table b62)
         (on b28 b45)
         (on b45 b40)
         (on b40 b75)
         (on b75 b67)
         (on b67 b1)
         (on b1 b33)
         (on b33 b62)
         (clear b24)
         (on-table b55)
         (on b24 b15)
         (on b15 b55)
         (clear b70)
         (on-table b47)
         (on b70 b4)
         (on b4 b3)
         (on b3 b65)
         (on b65 b19)
         (on b19 b14)
         (on b14 b68)
         (on b68 b48)
         (on b48 b47)
         (clear b27)
         (on-table b21)
         (on b27 b12)
         (on b12 b13)
         (on b13 b59)
         (on b59 b61)
         (on b61 b21)
         (clear b18)
         (on-table b20)
         (on b18 b42)
         (on b42 b50)
         (on b50 b46)
         (on b46 b58)
         (on b58 b20)
         (clear b32)
         (on-table b11)
         (on b32 b60)
         (on b60 b38)
         (on b38 b37)
         (on b37 b51)
         (on b51 b23)
         (on b23 b11)))
           (:tasks (task0 (achieve-goals arm1)))
           (:tasks (task1 (achieve-goals arm2)))
           (:tasks (task2 (achieve-goals arm3)))
           (:tasks (task3 (achieve-goals arm4)))
)