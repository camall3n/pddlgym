
(define (problem hanoi10_92) (:domain hanoi)
  (:objects
        d01
	d02
	d03
	d04
	d05
	d06
	d07
	d08
	d09
	d10
	peg1
	peg2
	peg3
  )
  (:init 
	(clear d01)
	(clear d02)
	(clear d03)
	(on d01 peg2)
	(on d02 d04)
	(on d03 d05)
	(on d04 d07)
	(on d05 d06)
	(on d06 peg3)
	(on d07 d08)
	(on d08 d09)
	(on d09 d10)
	(on d10 peg1)
	(smaller d02 d01)
	(smaller d03 d01)
	(smaller d03 d02)
	(smaller d04 d01)
	(smaller d04 d02)
	(smaller d04 d03)
	(smaller d05 d01)
	(smaller d05 d02)
	(smaller d05 d03)
	(smaller d05 d04)
	(smaller d06 d01)
	(smaller d06 d02)
	(smaller d06 d03)
	(smaller d06 d04)
	(smaller d06 d05)
	(smaller d07 d01)
	(smaller d07 d02)
	(smaller d07 d03)
	(smaller d07 d04)
	(smaller d07 d05)
	(smaller d07 d06)
	(smaller d08 d01)
	(smaller d08 d02)
	(smaller d08 d03)
	(smaller d08 d04)
	(smaller d08 d05)
	(smaller d08 d06)
	(smaller d08 d07)
	(smaller d09 d01)
	(smaller d09 d02)
	(smaller d09 d03)
	(smaller d09 d04)
	(smaller d09 d05)
	(smaller d09 d06)
	(smaller d09 d07)
	(smaller d09 d08)
	(smaller d10 d01)
	(smaller d10 d02)
	(smaller d10 d03)
	(smaller d10 d04)
	(smaller d10 d05)
	(smaller d10 d06)
	(smaller d10 d07)
	(smaller d10 d08)
	(smaller d10 d09)
	(smaller peg1 d01)
	(smaller peg1 d02)
	(smaller peg1 d03)
	(smaller peg1 d04)
	(smaller peg1 d05)
	(smaller peg1 d06)
	(smaller peg1 d07)
	(smaller peg1 d08)
	(smaller peg1 d09)
	(smaller peg1 d10)
	(smaller peg2 d01)
	(smaller peg2 d02)
	(smaller peg2 d03)
	(smaller peg2 d04)
	(smaller peg2 d05)
	(smaller peg2 d06)
	(smaller peg2 d07)
	(smaller peg2 d08)
	(smaller peg2 d09)
	(smaller peg2 d10)
	(smaller peg3 d01)
	(smaller peg3 d02)
	(smaller peg3 d03)
	(smaller peg3 d04)
	(smaller peg3 d05)
	(smaller peg3 d06)
	(smaller peg3 d07)
	(smaller peg3 d08)
	(smaller peg3 d09)
	(smaller peg3 d10)
  )
  (:goal (and
	(on d10 peg3)
	(on d09 d10)
	(on d08 d09)
	(on d07 d08)
	(on d06 d07)
	(on d05 d06)
	(on d04 d05)
	(on d03 d04)
	(on d02 d03)
	(on d01 d02)))
)
