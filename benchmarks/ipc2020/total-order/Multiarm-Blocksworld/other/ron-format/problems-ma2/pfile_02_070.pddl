(define
 (problem pfile_02_070)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (clear b66)
  (on-table b67)
  (on b66 b17)
  (on b17 b41)
  (on b41 b67)
  (clear b52)
  (on-table b54)
  (on b52 b62)
  (on b62 b20)
  (on b20 b65)
  (on b65 b10)
  (on b10 b27)
  (on b27 b53)
  (on b53 b59)
  (on b59 b12)
  (on b12 b40)
  (on b40 b48)
  (on b48 b16)
  (on b16 b15)
  (on b15 b68)
  (on b68 b63)
  (on b63 b54)
  (clear b32)
  (on-table b47)
  (on b32 b47)
  (clear b56)
  (on-table b38)
  (on b56 b45)
  (on b45 b70)
  (on b70 b26)
  (on b26 b4)
  (on b4 b19)
  (on b19 b51)
  (on b51 b11)
  (on b11 b38)
  (clear b69)
  (on-table b33)
  (on b69 b13)
  (on b13 b64)
  (on b64 b46)
  (on b46 b61)
  (on b61 b25)
  (on b25 b14)
  (on b14 b42)
  (on b42 b57)
  (on b57 b34)
  (on b34 b33)
  (clear b18)
  (on-table b28)
  (on b18 b37)
  (on b37 b28)
  (clear b35)
  (on-table b24)
  (on b35 b24)
  (clear b23)
  (on-table b23)
  (clear b55)
  (on-table b8)
  (on b55 b44)
  (on b44 b39)
  (on b39 b60)
  (on b60 b36)
  (on b36 b58)
  (on b58 b9)
  (on b9 b8)
  (clear b49)
  (on-table b3)
  (on b49 b50)
  (on b50 b5)
  (on b5 b30)
  (on b30 b43)
  (on b43 b29)
  (on b29 b7)
  (on b7 b6)
  (on b6 b2)
  (on b2 b31)
  (on b31 b22)
  (on b22 b21)
  (on b21 b1)
  (on b1 b3))
 (:goal (and
         (clear b64)
         (on-table b70)
         (on b64 b55)
         (on b55 b3)
         (on b3 b10)
         (on b10 b30)
         (on b30 b70)
         (clear b17)
         (on-table b29)
         (on b17 b14)
         (on b14 b2)
         (on b2 b57)
         (on b57 b56)
         (on b56 b48)
         (on b48 b41)
         (on b41 b44)
         (on b44 b59)
         (on b59 b24)
         (on b24 b31)
         (on b31 b36)
         (on b36 b34)
         (on b34 b8)
         (on b8 b29)
         (clear b67)
         (on-table b23)
         (on b67 b1)
         (on b1 b58)
         (on b58 b53)
         (on b53 b40)
         (on b40 b33)
         (on b33 b16)
         (on b16 b39)
         (on b39 b52)
         (on b52 b9)
         (on b9 b12)
         (on b12 b46)
         (on b46 b23)
         (clear b27)
         (on-table b19)
         (on b27 b22)
         (on b22 b5)
         (on b5 b21)
         (on b21 b65)
         (on b65 b68)
         (on b68 b61)
         (on b61 b7)
         (on b7 b28)
         (on b28 b42)
         (on b42 b60)
         (on b60 b43)
         (on b43 b6)
         (on b6 b13)
         (on b13 b63)
         (on b63 b37)
         (on b37 b50)
         (on b50 b26)
         (on b26 b47)
         (on b47 b18)
         (on b18 b35)
         (on b35 b32)
         (on b32 b66)
         (on b66 b69)
         (on b69 b54)
         (on b54 b19)
         (clear b45)
         (on-table b15)
         (on b45 b62)
         (on b62 b25)
         (on b25 b51)
         (on b51 b38)
         (on b38 b49)
         (on b49 b15)
         (clear b20)
         (on-table b4)
         (on b20 b11)
         (on b11 b4)))
                               (:tasks (task0 (achieve-goals arm1)))
                               (:tasks (task1 (achieve-goals arm2)))
)