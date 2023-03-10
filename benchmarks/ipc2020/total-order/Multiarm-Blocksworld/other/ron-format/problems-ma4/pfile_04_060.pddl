(define
 (problem pfile_04_060)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (clear b11)
  (on-table b56)
  (on b11 b44)
  (on b44 b15)
  (on b15 b47)
  (on b47 b30)
  (on b30 b56)
  (clear b13)
  (on-table b41)
  (on b13 b43)
  (on b43 b8)
  (on b8 b21)
  (on b21 b29)
  (on b29 b60)
  (on b60 b48)
  (on b48 b25)
  (on b25 b9)
  (on b9 b52)
  (on b52 b59)
  (on b59 b37)
  (on b37 b50)
  (on b50 b23)
  (on b23 b58)
  (on b58 b53)
  (on b53 b42)
  (on b42 b45)
  (on b45 b2)
  (on b2 b49)
  (on b49 b41)
  (clear b3)
  (on-table b36)
  (on b3 b36)
  (clear b17)
  (on-table b31)
  (on b17 b22)
  (on b22 b16)
  (on b16 b31)
  (clear b54)
  (on-table b19)
  (on b54 b19)
  (clear b51)
  (on-table b14)
  (on b51 b20)
  (on b20 b40)
  (on b40 b26)
  (on b26 b4)
  (on b4 b24)
  (on b24 b28)
  (on b28 b57)
  (on b57 b33)
  (on b33 b18)
  (on b18 b38)
  (on b38 b6)
  (on b6 b7)
  (on b7 b34)
  (on b34 b5)
  (on b5 b46)
  (on b46 b39)
  (on b39 b35)
  (on b35 b12)
  (on b12 b27)
  (on b27 b32)
  (on b32 b10)
  (on b10 b55)
  (on b55 b14)
  (clear b1)
  (on-table b1))
 (:goal (and
         (clear b1)
         (on-table b60)
         (on b1 b43)
         (on b43 b2)
         (on b2 b31)
         (on b31 b55)
         (on b55 b57)
         (on b57 b26)
         (on b26 b60)
         (clear b51)
         (on-table b36)
         (on b51 b36)
         (clear b59)
         (on-table b29)
         (on b59 b58)
         (on b58 b12)
         (on b12 b37)
         (on b37 b17)
         (on b17 b40)
         (on b40 b28)
         (on b28 b13)
         (on b13 b53)
         (on b53 b46)
         (on b46 b25)
         (on b25 b7)
         (on b7 b48)
         (on b48 b14)
         (on b14 b24)
         (on b24 b49)
         (on b49 b16)
         (on b16 b23)
         (on b23 b47)
         (on b47 b21)
         (on b21 b3)
         (on b3 b42)
         (on b42 b39)
         (on b39 b22)
         (on b22 b4)
         (on b4 b29)
         (clear b35)
         (on-table b15)
         (on b35 b27)
         (on b27 b56)
         (on b56 b15)
         (clear b20)
         (on-table b8)
         (on b20 b52)
         (on b52 b30)
         (on b30 b54)
         (on b54 b10)
         (on b10 b41)
         (on b41 b44)
         (on b44 b32)
         (on b32 b11)
         (on b11 b33)
         (on b33 b38)
         (on b38 b9)
         (on b9 b50)
         (on b50 b18)
         (on b18 b34)
         (on b34 b19)
         (on b19 b45)
         (on b45 b5)
         (on b5 b6)
         (on b6 b8)))
           (:tasks (task0 (achieve-goals arm1)))
           (:tasks (task1 (achieve-goals arm2)))
           (:tasks (task2 (achieve-goals arm3)))
           (:tasks (task3 (achieve-goals arm4)))
)