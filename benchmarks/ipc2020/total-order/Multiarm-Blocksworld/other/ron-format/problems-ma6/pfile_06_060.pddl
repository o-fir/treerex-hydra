(define
 (problem pfile_06_060)
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
           - BLOCK)
 (:init
  (hand-empty arm1)
  (hand-empty arm2)
  (hand-empty arm3)
  (hand-empty arm4)
  (hand-empty arm5)
  (hand-empty arm6)
  (clear b7)
  (on-table b60)
  (on b7 b56)
  (on b56 b24)
  (on b24 b60)
  (clear b10)
  (on-table b59)
  (on b10 b42)
  (on b42 b32)
  (on b32 b59)
  (clear b47)
  (on-table b36)
  (on b47 b27)
  (on b27 b39)
  (on b39 b51)
  (on b51 b18)
  (on b18 b6)
  (on b6 b45)
  (on b45 b43)
  (on b43 b2)
  (on b2 b20)
  (on b20 b34)
  (on b34 b44)
  (on b44 b46)
  (on b46 b5)
  (on b5 b49)
  (on b49 b23)
  (on b23 b37)
  (on b37 b12)
  (on b12 b36)
  (clear b55)
  (on-table b11)
  (on b55 b26)
  (on b26 b50)
  (on b50 b11)
  (clear b52)
  (on-table b8)
  (on b52 b58)
  (on b58 b31)
  (on b31 b19)
  (on b19 b17)
  (on b17 b33)
  (on b33 b28)
  (on b28 b16)
  (on b16 b41)
  (on b41 b25)
  (on b25 b53)
  (on b53 b54)
  (on b54 b38)
  (on b38 b21)
  (on b21 b1)
  (on b1 b40)
  (on b40 b13)
  (on b13 b29)
  (on b29 b4)
  (on b4 b14)
  (on b14 b3)
  (on b3 b30)
  (on b30 b22)
  (on b22 b48)
  (on b48 b9)
  (on b9 b57)
  (on b57 b15)
  (on b15 b35)
  (on b35 b8))
 (:goal (and
         (clear b56)
         (on-table b58)
         (on b56 b46)
         (on b46 b37)
         (on b37 b58)
         (clear b33)
         (on-table b50)
         (on b33 b44)
         (on b44 b8)
         (on b8 b32)
         (on b32 b51)
         (on b51 b18)
         (on b18 b59)
         (on b59 b53)
         (on b53 b19)
         (on b19 b16)
         (on b16 b50)
         (clear b21)
         (on-table b42)
         (on b21 b22)
         (on b22 b49)
         (on b49 b36)
         (on b36 b27)
         (on b27 b57)
         (on b57 b11)
         (on b11 b47)
         (on b47 b52)
         (on b52 b26)
         (on b26 b7)
         (on b7 b39)
         (on b39 b12)
         (on b12 b1)
         (on b1 b45)
         (on b45 b42)
         (clear b35)
         (on-table b40)
         (on b35 b30)
         (on b30 b2)
         (on b2 b13)
         (on b13 b28)
         (on b28 b4)
         (on b4 b41)
         (on b41 b14)
         (on b14 b23)
         (on b23 b9)
         (on b9 b15)
         (on b15 b24)
         (on b24 b31)
         (on b31 b40)
         (clear b10)
         (on-table b29)
         (on b10 b34)
         (on b34 b6)
         (on b6 b43)
         (on b43 b54)
         (on b54 b17)
         (on b17 b60)
         (on b60 b29)
         (clear b48)
         (on-table b20)
         (on b48 b55)
         (on b55 b38)
         (on b38 b25)
         (on b25 b20)
         (clear b5)
         (on-table b3)
         (on b5 b3)))
                    (:tasks (task0 (achieve-goals arm1)))
                    (:tasks (task1 (achieve-goals arm2)))
                    (:tasks (task2 (achieve-goals arm3)))
                    (:tasks (task3 (achieve-goals arm4)))
                    (:tasks (task4 (achieve-goals arm5)))
                    (:tasks (task5 (achieve-goals arm6)))
)