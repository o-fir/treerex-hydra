(define
 (problem pfile_04_065)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (clear b11)
  (on-table b63)
  (on b11 b21)
  (on b21 b14)
  (on b14 b33)
  (on b33 b41)
  (on b41 b22)
  (on b22 b10)
  (on b10 b65)
  (on b65 b61)
  (on b61 b27)
  (on b27 b35)
  (on b35 b60)
  (on b60 b53)
  (on b53 b57)
  (on b57 b26)
  (on b26 b8)
  (on b8 b64)
  (on b64 b50)
  (on b50 b46)
  (on b46 b5)
  (on b5 b54)
  (on b54 b4)
  (on b4 b63)
  (clear b36)
  (on-table b39)
  (on b36 b24)
  (on b24 b15)
  (on b15 b56)
  (on b56 b51)
  (on b51 b45)
  (on b45 b3)
  (on b3 b59)
  (on b59 b47)
  (on b47 b39)
  (clear b42)
  (on-table b37)
  (on b42 b7)
  (on b7 b30)
  (on b30 b19)
  (on b19 b28)
  (on b28 b48)
  (on b48 b43)
  (on b43 b55)
  (on b55 b32)
  (on b32 b34)
  (on b34 b58)
  (on b58 b16)
  (on b16 b13)
  (on b13 b9)
  (on b9 b12)
  (on b12 b37)
  (clear b31)
  (on-table b20)
  (on b31 b29)
  (on b29 b52)
  (on b52 b25)
  (on b25 b6)
  (on b6 b38)
  (on b38 b20)
  (clear b62)
  (on-table b18)
  (on b62 b40)
  (on b40 b17)
  (on b17 b23)
  (on b23 b2)
  (on b2 b18)
  (clear b44)
  (on-table b1)
  (on b44 b49)
  (on b49 b1))
 (:goal (and
         (clear b31)
         (on-table b59)
         (on b31 b45)
         (on b45 b59)
         (clear b30)
         (on-table b55)
         (on b30 b55)
         (clear b3)
         (on-table b52)
         (on b3 b5)
         (on b5 b2)
         (on b2 b64)
         (on b64 b62)
         (on b62 b19)
         (on b19 b56)
         (on b56 b52)
         (clear b61)
         (on-table b51)
         (on b61 b41)
         (on b41 b9)
         (on b9 b39)
         (on b39 b28)
         (on b28 b13)
         (on b13 b6)
         (on b6 b46)
         (on b46 b26)
         (on b26 b53)
         (on b53 b23)
         (on b23 b34)
         (on b34 b24)
         (on b24 b37)
         (on b37 b17)
         (on b17 b7)
         (on b7 b44)
         (on b44 b40)
         (on b40 b54)
         (on b54 b58)
         (on b58 b27)
         (on b27 b51)
         (clear b50)
         (on-table b50)
         (clear b43)
         (on-table b43)
         (clear b57)
         (on-table b25)
         (on b57 b29)
         (on b29 b38)
         (on b38 b4)
         (on b4 b11)
         (on b11 b22)
         (on b22 b60)
         (on b60 b63)
         (on b63 b35)
         (on b35 b1)
         (on b1 b25)
         (clear b36)
         (on-table b15)
         (on b36 b48)
         (on b48 b65)
         (on b65 b14)
         (on b14 b21)
         (on b21 b42)
         (on b42 b15)
         (clear b18)
         (on-table b12)
         (on b18 b49)
         (on b49 b16)
         (on b16 b8)
         (on b8 b20)
         (on b20 b47)
         (on b47 b10)
         (on b10 b32)
         (on b32 b33)
         (on b33 b12)))
           (:tasks (task0 (achieve-goals arm1)))
           (:tasks (task1 (achieve-goals arm2)))
           (:tasks (task2 (achieve-goals arm3)))
           (:tasks (task3 (achieve-goals arm4)))
)