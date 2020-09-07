
(define (problem mixed-f20-p10-u0-v0-g0-a0-n0-a0-b0-n0-f0-r0_53) (:domain miconic)
  (:objects
        f0 - floor
	f1 - floor
	f10 - floor
	f11 - floor
	f12 - floor
	f13 - floor
	f14 - floor
	f15 - floor
	f16 - floor
	f17 - floor
	f18 - floor
	f19 - floor
	f2 - floor
	f3 - floor
	f4 - floor
	f5 - floor
	f6 - floor
	f7 - floor
	f8 - floor
	f9 - floor
	p0 - passenger
	p1 - passenger
	p2 - passenger
	p3 - passenger
	p4 - passenger
	p5 - passenger
	p6 - passenger
	p7 - passenger
	p8 - passenger
	p9 - passenger
  )
  (:goal (and
	(served p0)
	(served p1)
	(served p2)
	(served p3)
	(served p4)
	(served p5)
	(served p6)
	(served p7)
	(served p8)
	(served p9)))
  (:init 
	(above f0 f10)
	(above f0 f11)
	(above f0 f12)
	(above f0 f13)
	(above f0 f14)
	(above f0 f15)
	(above f0 f16)
	(above f0 f17)
	(above f0 f18)
	(above f0 f19)
	(above f0 f1)
	(above f0 f2)
	(above f0 f3)
	(above f0 f4)
	(above f0 f5)
	(above f0 f6)
	(above f0 f7)
	(above f0 f8)
	(above f0 f9)
	(above f10 f11)
	(above f10 f12)
	(above f10 f13)
	(above f10 f14)
	(above f10 f15)
	(above f10 f16)
	(above f10 f17)
	(above f10 f18)
	(above f10 f19)
	(above f11 f12)
	(above f11 f13)
	(above f11 f14)
	(above f11 f15)
	(above f11 f16)
	(above f11 f17)
	(above f11 f18)
	(above f11 f19)
	(above f12 f13)
	(above f12 f14)
	(above f12 f15)
	(above f12 f16)
	(above f12 f17)
	(above f12 f18)
	(above f12 f19)
	(above f13 f14)
	(above f13 f15)
	(above f13 f16)
	(above f13 f17)
	(above f13 f18)
	(above f13 f19)
	(above f14 f15)
	(above f14 f16)
	(above f14 f17)
	(above f14 f18)
	(above f14 f19)
	(above f15 f16)
	(above f15 f17)
	(above f15 f18)
	(above f15 f19)
	(above f16 f17)
	(above f16 f18)
	(above f16 f19)
	(above f17 f18)
	(above f17 f19)
	(above f18 f19)
	(above f1 f10)
	(above f1 f11)
	(above f1 f12)
	(above f1 f13)
	(above f1 f14)
	(above f1 f15)
	(above f1 f16)
	(above f1 f17)
	(above f1 f18)
	(above f1 f19)
	(above f1 f2)
	(above f1 f3)
	(above f1 f4)
	(above f1 f5)
	(above f1 f6)
	(above f1 f7)
	(above f1 f8)
	(above f1 f9)
	(above f2 f10)
	(above f2 f11)
	(above f2 f12)
	(above f2 f13)
	(above f2 f14)
	(above f2 f15)
	(above f2 f16)
	(above f2 f17)
	(above f2 f18)
	(above f2 f19)
	(above f2 f3)
	(above f2 f4)
	(above f2 f5)
	(above f2 f6)
	(above f2 f7)
	(above f2 f8)
	(above f2 f9)
	(above f3 f10)
	(above f3 f11)
	(above f3 f12)
	(above f3 f13)
	(above f3 f14)
	(above f3 f15)
	(above f3 f16)
	(above f3 f17)
	(above f3 f18)
	(above f3 f19)
	(above f3 f4)
	(above f3 f5)
	(above f3 f6)
	(above f3 f7)
	(above f3 f8)
	(above f3 f9)
	(above f4 f10)
	(above f4 f11)
	(above f4 f12)
	(above f4 f13)
	(above f4 f14)
	(above f4 f15)
	(above f4 f16)
	(above f4 f17)
	(above f4 f18)
	(above f4 f19)
	(above f4 f5)
	(above f4 f6)
	(above f4 f7)
	(above f4 f8)
	(above f4 f9)
	(above f5 f10)
	(above f5 f11)
	(above f5 f12)
	(above f5 f13)
	(above f5 f14)
	(above f5 f15)
	(above f5 f16)
	(above f5 f17)
	(above f5 f18)
	(above f5 f19)
	(above f5 f6)
	(above f5 f7)
	(above f5 f8)
	(above f5 f9)
	(above f6 f10)
	(above f6 f11)
	(above f6 f12)
	(above f6 f13)
	(above f6 f14)
	(above f6 f15)
	(above f6 f16)
	(above f6 f17)
	(above f6 f18)
	(above f6 f19)
	(above f6 f7)
	(above f6 f8)
	(above f6 f9)
	(above f7 f10)
	(above f7 f11)
	(above f7 f12)
	(above f7 f13)
	(above f7 f14)
	(above f7 f15)
	(above f7 f16)
	(above f7 f17)
	(above f7 f18)
	(above f7 f19)
	(above f7 f8)
	(above f7 f9)
	(above f8 f10)
	(above f8 f11)
	(above f8 f12)
	(above f8 f13)
	(above f8 f14)
	(above f8 f15)
	(above f8 f16)
	(above f8 f17)
	(above f8 f18)
	(above f8 f19)
	(above f8 f9)
	(above f9 f10)
	(above f9 f11)
	(above f9 f12)
	(above f9 f13)
	(above f9 f14)
	(above f9 f15)
	(above f9 f16)
	(above f9 f17)
	(above f9 f18)
	(above f9 f19)
	(board f0 p0)
	(board f0 p1)
	(board f0 p2)
	(board f0 p3)
	(board f0 p4)
	(board f0 p5)
	(board f0 p6)
	(board f0 p7)
	(board f0 p8)
	(board f0 p9)
	(board f10 p0)
	(board f10 p1)
	(board f10 p2)
	(board f10 p3)
	(board f10 p4)
	(board f10 p5)
	(board f10 p6)
	(board f10 p7)
	(board f10 p8)
	(board f10 p9)
	(board f11 p0)
	(board f11 p1)
	(board f11 p2)
	(board f11 p3)
	(board f11 p4)
	(board f11 p5)
	(board f11 p6)
	(board f11 p7)
	(board f11 p8)
	(board f11 p9)
	(board f12 p0)
	(board f12 p1)
	(board f12 p2)
	(board f12 p3)
	(board f12 p4)
	(board f12 p5)
	(board f12 p6)
	(board f12 p7)
	(board f12 p8)
	(board f12 p9)
	(board f13 p0)
	(board f13 p1)
	(board f13 p2)
	(board f13 p3)
	(board f13 p4)
	(board f13 p5)
	(board f13 p6)
	(board f13 p7)
	(board f13 p8)
	(board f13 p9)
	(board f14 p0)
	(board f14 p1)
	(board f14 p2)
	(board f14 p3)
	(board f14 p4)
	(board f14 p5)
	(board f14 p6)
	(board f14 p7)
	(board f14 p8)
	(board f14 p9)
	(board f15 p0)
	(board f15 p1)
	(board f15 p2)
	(board f15 p3)
	(board f15 p4)
	(board f15 p5)
	(board f15 p6)
	(board f15 p7)
	(board f15 p8)
	(board f15 p9)
	(board f16 p0)
	(board f16 p1)
	(board f16 p2)
	(board f16 p3)
	(board f16 p4)
	(board f16 p5)
	(board f16 p6)
	(board f16 p7)
	(board f16 p8)
	(board f16 p9)
	(board f17 p0)
	(board f17 p1)
	(board f17 p2)
	(board f17 p3)
	(board f17 p4)
	(board f17 p5)
	(board f17 p6)
	(board f17 p7)
	(board f17 p8)
	(board f17 p9)
	(board f18 p0)
	(board f18 p1)
	(board f18 p2)
	(board f18 p3)
	(board f18 p4)
	(board f18 p5)
	(board f18 p6)
	(board f18 p7)
	(board f18 p8)
	(board f18 p9)
	(board f19 p0)
	(board f19 p1)
	(board f19 p2)
	(board f19 p3)
	(board f19 p4)
	(board f19 p5)
	(board f19 p6)
	(board f19 p7)
	(board f19 p8)
	(board f19 p9)
	(board f1 p0)
	(board f1 p1)
	(board f1 p2)
	(board f1 p3)
	(board f1 p4)
	(board f1 p5)
	(board f1 p6)
	(board f1 p7)
	(board f1 p8)
	(board f1 p9)
	(board f2 p0)
	(board f2 p1)
	(board f2 p2)
	(board f2 p3)
	(board f2 p4)
	(board f2 p5)
	(board f2 p6)
	(board f2 p7)
	(board f2 p8)
	(board f2 p9)
	(board f3 p0)
	(board f3 p1)
	(board f3 p2)
	(board f3 p3)
	(board f3 p4)
	(board f3 p5)
	(board f3 p6)
	(board f3 p7)
	(board f3 p8)
	(board f3 p9)
	(board f4 p0)
	(board f4 p1)
	(board f4 p2)
	(board f4 p3)
	(board f4 p4)
	(board f4 p5)
	(board f4 p6)
	(board f4 p7)
	(board f4 p8)
	(board f4 p9)
	(board f5 p0)
	(board f5 p1)
	(board f5 p2)
	(board f5 p3)
	(board f5 p4)
	(board f5 p5)
	(board f5 p6)
	(board f5 p7)
	(board f5 p8)
	(board f5 p9)
	(board f6 p0)
	(board f6 p1)
	(board f6 p2)
	(board f6 p3)
	(board f6 p4)
	(board f6 p5)
	(board f6 p6)
	(board f6 p7)
	(board f6 p8)
	(board f6 p9)
	(board f7 p0)
	(board f7 p1)
	(board f7 p2)
	(board f7 p3)
	(board f7 p4)
	(board f7 p5)
	(board f7 p6)
	(board f7 p7)
	(board f7 p8)
	(board f7 p9)
	(board f8 p0)
	(board f8 p1)
	(board f8 p2)
	(board f8 p3)
	(board f8 p4)
	(board f8 p5)
	(board f8 p6)
	(board f8 p7)
	(board f8 p8)
	(board f8 p9)
	(board f9 p0)
	(board f9 p1)
	(board f9 p2)
	(board f9 p3)
	(board f9 p4)
	(board f9 p5)
	(board f9 p6)
	(board f9 p7)
	(board f9 p8)
	(board f9 p9)
	(boarded p1)
	(boarded p3)
	(boarded p4)
	(boarded p7)
	(depart f0 p0)
	(depart f0 p1)
	(depart f0 p2)
	(depart f0 p3)
	(depart f0 p4)
	(depart f0 p5)
	(depart f0 p6)
	(depart f0 p7)
	(depart f0 p8)
	(depart f0 p9)
	(depart f10 p0)
	(depart f10 p1)
	(depart f10 p2)
	(depart f10 p3)
	(depart f10 p4)
	(depart f10 p5)
	(depart f10 p6)
	(depart f10 p7)
	(depart f10 p8)
	(depart f10 p9)
	(depart f11 p0)
	(depart f11 p1)
	(depart f11 p2)
	(depart f11 p3)
	(depart f11 p4)
	(depart f11 p5)
	(depart f11 p6)
	(depart f11 p7)
	(depart f11 p8)
	(depart f11 p9)
	(depart f12 p0)
	(depart f12 p1)
	(depart f12 p2)
	(depart f12 p3)
	(depart f12 p4)
	(depart f12 p5)
	(depart f12 p6)
	(depart f12 p7)
	(depart f12 p8)
	(depart f12 p9)
	(depart f13 p0)
	(depart f13 p1)
	(depart f13 p2)
	(depart f13 p3)
	(depart f13 p4)
	(depart f13 p5)
	(depart f13 p6)
	(depart f13 p7)
	(depart f13 p8)
	(depart f13 p9)
	(depart f14 p0)
	(depart f14 p1)
	(depart f14 p2)
	(depart f14 p3)
	(depart f14 p4)
	(depart f14 p5)
	(depart f14 p6)
	(depart f14 p7)
	(depart f14 p8)
	(depart f14 p9)
	(depart f15 p0)
	(depart f15 p1)
	(depart f15 p2)
	(depart f15 p3)
	(depart f15 p4)
	(depart f15 p5)
	(depart f15 p6)
	(depart f15 p7)
	(depart f15 p8)
	(depart f15 p9)
	(depart f16 p0)
	(depart f16 p1)
	(depart f16 p2)
	(depart f16 p3)
	(depart f16 p4)
	(depart f16 p5)
	(depart f16 p6)
	(depart f16 p7)
	(depart f16 p8)
	(depart f16 p9)
	(depart f17 p0)
	(depart f17 p1)
	(depart f17 p2)
	(depart f17 p3)
	(depart f17 p4)
	(depart f17 p5)
	(depart f17 p6)
	(depart f17 p7)
	(depart f17 p8)
	(depart f17 p9)
	(depart f18 p0)
	(depart f18 p1)
	(depart f18 p2)
	(depart f18 p3)
	(depart f18 p4)
	(depart f18 p5)
	(depart f18 p6)
	(depart f18 p7)
	(depart f18 p8)
	(depart f18 p9)
	(depart f19 p0)
	(depart f19 p1)
	(depart f19 p2)
	(depart f19 p3)
	(depart f19 p4)
	(depart f19 p5)
	(depart f19 p6)
	(depart f19 p7)
	(depart f19 p8)
	(depart f19 p9)
	(depart f1 p0)
	(depart f1 p1)
	(depart f1 p2)
	(depart f1 p3)
	(depart f1 p4)
	(depart f1 p5)
	(depart f1 p6)
	(depart f1 p7)
	(depart f1 p8)
	(depart f1 p9)
	(depart f2 p0)
	(depart f2 p1)
	(depart f2 p2)
	(depart f2 p3)
	(depart f2 p4)
	(depart f2 p5)
	(depart f2 p6)
	(depart f2 p7)
	(depart f2 p8)
	(depart f2 p9)
	(depart f3 p0)
	(depart f3 p1)
	(depart f3 p2)
	(depart f3 p3)
	(depart f3 p4)
	(depart f3 p5)
	(depart f3 p6)
	(depart f3 p7)
	(depart f3 p8)
	(depart f3 p9)
	(depart f4 p0)
	(depart f4 p1)
	(depart f4 p2)
	(depart f4 p3)
	(depart f4 p4)
	(depart f4 p5)
	(depart f4 p6)
	(depart f4 p7)
	(depart f4 p8)
	(depart f4 p9)
	(depart f5 p0)
	(depart f5 p1)
	(depart f5 p2)
	(depart f5 p3)
	(depart f5 p4)
	(depart f5 p5)
	(depart f5 p6)
	(depart f5 p7)
	(depart f5 p8)
	(depart f5 p9)
	(depart f6 p0)
	(depart f6 p1)
	(depart f6 p2)
	(depart f6 p3)
	(depart f6 p4)
	(depart f6 p5)
	(depart f6 p6)
	(depart f6 p7)
	(depart f6 p8)
	(depart f6 p9)
	(depart f7 p0)
	(depart f7 p1)
	(depart f7 p2)
	(depart f7 p3)
	(depart f7 p4)
	(depart f7 p5)
	(depart f7 p6)
	(depart f7 p7)
	(depart f7 p8)
	(depart f7 p9)
	(depart f8 p0)
	(depart f8 p1)
	(depart f8 p2)
	(depart f8 p3)
	(depart f8 p4)
	(depart f8 p5)
	(depart f8 p6)
	(depart f8 p7)
	(depart f8 p8)
	(depart f8 p9)
	(depart f9 p0)
	(depart f9 p1)
	(depart f9 p2)
	(depart f9 p3)
	(depart f9 p4)
	(depart f9 p5)
	(depart f9 p6)
	(depart f9 p7)
	(depart f9 p8)
	(depart f9 p9)
	(destin p0 f6)
	(destin p1 f15)
	(destin p2 f15)
	(destin p3 f12)
	(destin p4 f1)
	(destin p5 f7)
	(destin p6 f19)
	(destin p7 f6)
	(destin p8 f6)
	(destin p9 f16)
	(down f0)
	(down f10)
	(down f11)
	(down f12)
	(down f13)
	(down f14)
	(down f15)
	(down f16)
	(down f17)
	(down f18)
	(down f19)
	(down f1)
	(down f2)
	(down f3)
	(down f4)
	(down f5)
	(down f6)
	(down f7)
	(down f8)
	(down f9)
	(lift-at f8)
	(origin p0 f3)
	(origin p1 f17)
	(origin p2 f13)
	(origin p3 f6)
	(origin p4 f9)
	(origin p5 f2)
	(origin p6 f10)
	(origin p7 f3)
	(origin p8 f0)
	(origin p9 f12)
	(served p1)
	(served p7)
	(up f0)
	(up f10)
	(up f11)
	(up f12)
	(up f13)
	(up f14)
	(up f15)
	(up f16)
	(up f17)
	(up f18)
	(up f19)
	(up f1)
	(up f2)
	(up f3)
	(up f4)
	(up f5)
	(up f6)
	(up f7)
	(up f8)
	(up f9)
))
