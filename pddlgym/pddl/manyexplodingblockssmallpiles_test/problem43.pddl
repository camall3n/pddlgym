
(define (problem manyblockssmallpiles) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b11 - block
	b12 - block
	b13 - block
	b14 - block
	b15 - block
	b16 - block
	b17 - block
	b18 - block
	b19 - block
	b2 - block
	b20 - block
	b21 - block
	b22 - block
	b23 - block
	b24 - block
	b25 - block
	b26 - block
	b27 - block
	b28 - block
	b29 - block
	b3 - block
	b30 - block
	b31 - block
	b32 - block
	b33 - block
	b34 - block
	b35 - block
	b36 - block
	b37 - block
	b38 - block
	b39 - block
	b4 - block
	b40 - block
	b41 - block
	b42 - block
	b43 - block
	b44 - block
	b45 - block
	b46 - block
	b47 - block
	b48 - block
	b49 - block
	b5 - block
	b50 - block
	b6 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b10)
	(clear b11)
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b17)
	(clear b18)
	(clear b19)
	(clear b21)
	(clear b23)
	(clear b25)
	(clear b26)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b31)
	(clear b33)
	(clear b35)
	(clear b37)
	(clear b38)
	(clear b40)
	(clear b41)
	(clear b43)
	(clear b44)
	(clear b46)
	(clear b47)
	(clear b49)
	(clear b4)
	(clear b50)
	(clear b5)
	(clear b7)
	(clear b8)
	(handempty )
	(on b0 b1)
	(on b11 b12)
	(on b15 b16)
	(on b19 b20)
	(on b21 b22)
	(on b23 b24)
	(on b26 b27)
	(on b29 b30)
	(on b2 b3)
	(on b31 b32)
	(on b33 b34)
	(on b35 b36)
	(on b38 b39)
	(on b41 b42)
	(on b44 b45)
	(on b47 b48)
	(on b5 b6)
	(on b8 b9)
	(ontable b10)
	(ontable b12)
	(ontable b13)
	(ontable b14)
	(ontable b16)
	(ontable b17)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b30)
	(ontable b32)
	(ontable b34)
	(ontable b36)
	(ontable b37)
	(ontable b39)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b43)
	(ontable b45)
	(ontable b46)
	(ontable b48)
	(ontable b49)
	(ontable b4)
	(ontable b50)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b37 b44)
	(ontable b44)))
)
