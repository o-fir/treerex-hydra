(define
 (problem pfile_07_070)
 (:domain blocks)
 (:objects arm1 arm2 arm3 arm4 arm5 arm6 arm7 - ARM
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
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (hand-empty arm6)
  (hand-empty arm7)
  (clear b16)
  (on-table b65)
  (on b16 b3)
  (on b3 b62)
  (on b62 b60)
  (on b60 b66)
  (on b66 b51)
  (on b51 b29)
  (on b29 b18)
  (on b18 b65)
  (clear b38)
  (on-table b55)
  (on b38 b57)
  (on b57 b24)
  (on b24 b52)
  (on b52 b55)
  (clear b50)
  (on-table b44)
  (on b50 b28)
  (on b28 b11)
  (on b11 b41)
  (on b41 b10)
  (on b10 b45)
  (on b45 b68)
  (on b68 b14)
  (on b14 b63)
  (on b63 b61)
  (on b61 b53)
  (on b53 b48)
  (on b48 b34)
  (on b34 b67)
  (on b67 b40)
  (on b40 b64)
  (on b64 b15)
  (on b15 b37)
  (on b37 b44)
  (clear b5)
  (on-table b35)
  (on b5 b21)
  (on b21 b22)
  (on b22 b36)
  (on b36 b4)
  (on b4 b35)
  (clear b25)
  (on-table b33)
  (on b25 b42)
  (on b42 b47)
  (on b47 b43)
  (on b43 b6)
  (on b6 b33)
  (clear b31)
  (on-table b27)
  (on b31 b59)
  (on b59 b17)
  (on b17 b39)
  (on b39 b46)
  (on b46 b26)
  (on b26 b23)
  (on b23 b49)
  (on b49 b69)
  (on b69 b12)
  (on b12 b30)
  (on b30 b70)
  (on b70 b1)
  (on b1 b27)
  (clear b32)
  (on-table b8)
  (on b32 b20)
  (on b20 b13)
  (on b13 b56)
  (on b56 b2)
  (on b2 b54)
  (on b54 b58)
  (on b58 b7)
  (on b7 b9)
  (on b9 b19)
  (on b19 b8))
 (:goal (and
         (clear b40)
         (on-table b70)
         (on b40 b23)
         (on b23 b66)
         (on b66 b50)
         (on b50 b43)
         (on b43 b18)
         (on b18 b67)
         (on b67 b6)
         (on b6 b1)
         (on b1 b29)
         (on b29 b21)
         (on b21 b64)
         (on b64 b24)
         (on b24 b42)
         (on b42 b70)
         (clear b11)
         (on-table b53)
         (on b11 b61)
         (on b61 b58)
         (on b58 b45)
         (on b45 b17)
         (on b17 b51)
         (on b51 b39)
         (on b39 b69)
         (on b69 b15)
         (on b15 b9)
         (on b9 b37)
         (on b37 b53)
         (clear b32)
         (on-table b27)
         (on b32 b46)
         (on b46 b2)
         (on b2 b55)
         (on b55 b65)
         (on b65 b8)
         (on b8 b36)
         (on b36 b3)
         (on b3 b38)
         (on b38 b59)
         (on b59 b25)
         (on b25 b34)
         (on b34 b62)
         (on b62 b56)
         (on b56 b7)
         (on b7 b68)
         (on b68 b5)
         (on b5 b20)
         (on b20 b44)
         (on b44 b33)
         (on b33 b52)
         (on b52 b30)
         (on b30 b60)
         (on b60 b48)
         (on b48 b35)
         (on b35 b10)
         (on b10 b26)
         (on b26 b27)
         (clear b19)
         (on-table b13)
         (on b19 b4)
         (on b4 b57)
         (on b57 b12)
         (on b12 b54)
         (on b54 b14)
         (on b14 b63)
         (on b63 b28)
         (on b28 b16)
         (on b16 b47)
         (on b47 b49)
         (on b49 b41)
         (on b41 b31)
         (on b31 b22)
         (on b22 b13)))
                                               (:tasks (task0 (achieve-goals arm1)))
                                               (:tasks (task1 (achieve-goals arm2)))
                                               (:tasks (task2 (achieve-goals arm3)))
                                               (:tasks (task3 (achieve-goals arm4)))
                                               (:tasks (task4 (achieve-goals arm5)))
                                               (:tasks (task5 (achieve-goals arm6)))
                                               (:tasks (task6 (achieve-goals arm7)))
)