
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
	b51 - block
	b52 - block
	b53 - block
	b54 - block
	b55 - block
	b56 - block
	b57 - block
	b58 - block
	b59 - block
	b6 - block
	b60 - block
	b61 - block
	b62 - block
	b63 - block
	b64 - block
	b65 - block
	b7 - block
	b8 - block
	b9 - block
  )
  (:init 
	(clear b0)
	(clear b10)
	(clear b12)
	(clear b14)
	(clear b16)
	(clear b17)
	(clear b18)
	(clear b1)
	(clear b20)
	(clear b22)
	(clear b24)
	(clear b25)
	(clear b27)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b31)
	(clear b33)
	(clear b34)
	(clear b36)
	(clear b38)
	(clear b39)
	(clear b3)
	(clear b41)
	(clear b43)
	(clear b45)
	(clear b46)
	(clear b47)
	(clear b48)
	(clear b4)
	(clear b50)
	(clear b51)
	(clear b53)
	(clear b55)
	(clear b57)
	(clear b59)
	(clear b60)
	(clear b62)
	(clear b64)
	(clear b6)
	(clear b7)
	(clear b8)
	(handempty )
	(on b10 b11)
	(on b12 b13)
	(on b14 b15)
	(on b18 b19)
	(on b20 b21)
	(on b22 b23)
	(on b25 b26)
	(on b27 b28)
	(on b31 b32)
	(on b34 b35)
	(on b36 b37)
	(on b39 b40)
	(on b41 b42)
	(on b43 b44)
	(on b48 b49)
	(on b4 b5)
	(on b51 b52)
	(on b53 b54)
	(on b55 b56)
	(on b57 b58)
	(on b60 b61)
	(on b62 b63)
	(on b64 b65)
	(on b8 b9)
	(ontable b0)
	(ontable b11)
	(ontable b13)
	(ontable b15)
	(ontable b16)
	(ontable b17)
	(ontable b19)
	(ontable b1)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b26)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b30)
	(ontable b32)
	(ontable b33)
	(ontable b35)
	(ontable b37)
	(ontable b38)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b44)
	(ontable b45)
	(ontable b46)
	(ontable b47)
	(ontable b49)
	(ontable b50)
	(ontable b52)
	(ontable b54)
	(ontable b56)
	(ontable b58)
	(ontable b59)
	(ontable b5)
	(ontable b61)
	(ontable b63)
	(ontable b65)
	(ontable b6)
	(ontable b7)
	(ontable b9)
  )
  (:goal (and
	(on b51 b46)
	(ontable b46)
	(on b54 b57)
	(on b57 b39)
	(ontable b39)))
)