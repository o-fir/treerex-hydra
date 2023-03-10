(define
 (problem pfile_04_055)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (clear b38)
  (on-table b38)
  (clear b25)
  (on-table b37)
  (on b25 b40)
  (on b40 b34)
  (on b34 b43)
  (on b43 b55)
  (on b55 b30)
  (on b30 b46)
  (on b46 b11)
  (on b11 b36)
  (on b36 b22)
  (on b22 b49)
  (on b49 b19)
  (on b19 b54)
  (on b54 b21)
  (on b21 b48)
  (on b48 b7)
  (on b7 b37)
  (clear b29)
  (on-table b35)
  (on b29 b52)
  (on b52 b35)
  (clear b16)
  (on-table b20)
  (on b16 b50)
  (on b50 b45)
  (on b45 b1)
  (on b1 b28)
  (on b28 b20)
  (clear b53)
  (on-table b17)
  (on b53 b44)
  (on b44 b17)
  (clear b10)
  (on-table b14)
  (on b10 b39)
  (on b39 b51)
  (on b51 b5)
  (on b5 b41)
  (on b41 b31)
  (on b31 b24)
  (on b24 b23)
  (on b23 b3)
  (on b3 b27)
  (on b27 b42)
  (on b42 b18)
  (on b18 b4)
  (on b4 b8)
  (on b8 b15)
  (on b15 b32)
  (on b32 b47)
  (on b47 b26)
  (on b26 b12)
  (on b12 b2)
  (on b2 b33)
  (on b33 b6)
  (on b6 b9)
  (on b9 b14)
  (clear b13)
  (on-table b13))
 (:goal (and
         (clear b31)
         (on-table b53)
         (on b31 b12)
         (on b12 b22)
         (on b22 b35)
         (on b35 b53)
         (clear b21)
         (on-table b50)
         (on b21 b49)
         (on b49 b28)
         (on b28 b30)
         (on b30 b18)
         (on b18 b16)
         (on b16 b3)
         (on b3 b25)
         (on b25 b38)
         (on b38 b50)
         (clear b47)
         (on-table b46)
         (on b47 b42)
         (on b42 b6)
         (on b6 b9)
         (on b9 b54)
         (on b54 b48)
         (on b48 b46)
         (clear b20)
         (on-table b45)
         (on b20 b2)
         (on b2 b45)
         (clear b51)
         (on-table b44)
         (on b51 b41)
         (on b41 b36)
         (on b36 b7)
         (on b7 b32)
         (on b32 b52)
         (on b52 b44)
         (clear b14)
         (on-table b43)
         (on b14 b27)
         (on b27 b43)
         (clear b39)
         (on-table b39)
         (clear b23)
         (on-table b34)
         (on b23 b4)
         (on b4 b29)
         (on b29 b26)
         (on b26 b10)
         (on b10 b11)
         (on b11 b33)
         (on b33 b8)
         (on b8 b55)
         (on b55 b34)
         (clear b37)
         (on-table b24)
         (on b37 b40)
         (on b40 b5)
         (on b5 b13)
         (on b13 b15)
         (on b15 b17)
         (on b17 b24)
         (clear b19)
         (on-table b1)
         (on b19 b1)))
           (:tasks (task0 (achieve-goals arm1)))
           (:tasks (task1 (achieve-goals arm2)))
           (:tasks (task2 (achieve-goals arm3)))
           (:tasks (task3 (achieve-goals arm4)))
)