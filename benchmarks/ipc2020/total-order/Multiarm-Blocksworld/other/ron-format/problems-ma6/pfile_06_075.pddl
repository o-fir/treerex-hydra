(define
 (problem pfile_06_075)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (hand-empty arm6)
  (clear b37)
  (on-table b70)
  (on b37 b35)
  (on b35 b31)
  (on b31 b10)
  (on b10 b13)
  (on b13 b52)
  (on b52 b74)
  (on b74 b15)
  (on b15 b26)
  (on b26 b57)
  (on b57 b27)
  (on b27 b49)
  (on b49 b4)
  (on b4 b71)
  (on b71 b65)
  (on b65 b70)
  (clear b9)
  (on-table b53)
  (on b9 b24)
  (on b24 b66)
  (on b66 b3)
  (on b3 b56)
  (on b56 b28)
  (on b28 b45)
  (on b45 b53)
  (clear b73)
  (on-table b36)
  (on b73 b42)
  (on b42 b11)
  (on b11 b33)
  (on b33 b5)
  (on b5 b68)
  (on b68 b23)
  (on b23 b75)
  (on b75 b58)
  (on b58 b39)
  (on b39 b12)
  (on b12 b20)
  (on b20 b36)
  (clear b32)
  (on-table b32)
  (clear b41)
  (on-table b30)
  (on b41 b14)
  (on b14 b7)
  (on b7 b61)
  (on b61 b63)
  (on b63 b48)
  (on b48 b6)
  (on b6 b34)
  (on b34 b54)
  (on b54 b21)
  (on b21 b18)
  (on b18 b69)
  (on b69 b47)
  (on b47 b29)
  (on b29 b50)
  (on b50 b2)
  (on b2 b43)
  (on b43 b62)
  (on b62 b25)
  (on b25 b22)
  (on b22 b1)
  (on b1 b38)
  (on b38 b44)
  (on b44 b60)
  (on b60 b72)
  (on b72 b8)
  (on b8 b67)
  (on b67 b51)
  (on b51 b55)
  (on b55 b19)
  (on b19 b16)
  (on b16 b46)
  (on b46 b40)
  (on b40 b59)
  (on b59 b64)
  (on b64 b30)
  (clear b17)
  (on-table b17))
 (:goal (and
         (clear b67)
         (on-table b75)
         (on b67 b54)
         (on b54 b21)
         (on b21 b50)
         (on b50 b65)
         (on b65 b75)
         (clear b68)
         (on-table b57)
         (on b68 b42)
         (on b42 b74)
         (on b74 b19)
         (on b19 b14)
         (on b14 b56)
         (on b56 b59)
         (on b59 b31)
         (on b31 b34)
         (on b34 b26)
         (on b26 b20)
         (on b20 b69)
         (on b69 b62)
         (on b62 b51)
         (on b51 b33)
         (on b33 b7)
         (on b7 b24)
         (on b24 b61)
         (on b61 b41)
         (on b41 b57)
         (clear b12)
         (on-table b53)
         (on b12 b9)
         (on b9 b36)
         (on b36 b2)
         (on b2 b46)
         (on b46 b60)
         (on b60 b3)
         (on b3 b53)
         (clear b47)
         (on-table b45)
         (on b47 b23)
         (on b23 b22)
         (on b22 b45)
         (clear b10)
         (on-table b30)
         (on b10 b44)
         (on b44 b37)
         (on b37 b72)
         (on b72 b30)
         (clear b32)
         (on-table b18)
         (on b32 b73)
         (on b73 b64)
         (on b64 b52)
         (on b52 b15)
         (on b15 b66)
         (on b66 b70)
         (on b70 b6)
         (on b6 b25)
         (on b25 b35)
         (on b35 b5)
         (on b5 b71)
         (on b71 b27)
         (on b27 b1)
         (on b1 b49)
         (on b49 b11)
         (on b11 b18)
         (clear b13)
         (on-table b16)
         (on b13 b8)
         (on b8 b43)
         (on b43 b28)
         (on b28 b39)
         (on b39 b29)
         (on b29 b38)
         (on b38 b48)
         (on b48 b40)
         (on b40 b63)
         (on b63 b17)
         (on b17 b55)
         (on b55 b58)
         (on b58 b4)
         (on b4 b16)))
                    (:tasks (task0 (achieve-goals arm1)))
                    (:tasks (task1 (achieve-goals arm2)))
                    (:tasks (task2 (achieve-goals arm3)))
                    (:tasks (task3 (achieve-goals arm4)))
                    (:tasks (task4 (achieve-goals arm5)))
                    (:tasks (task5 (achieve-goals arm6)))
)