
(define (domain miconic)
  (:requirements :typing )
  (:types passenger floor)
  (:predicates (not-boarded ?v0 - passenger)
	(down ?v0 - floor)
	(boarded ?v0 - passenger)
	(depart ?v0 - floor ?v1 - passenger)
	(not-served ?v0 - passenger)
	(origin ?v0 - passenger ?v1 - floor)
	(board ?v0 - floor ?v1 - passenger)
	(lift-at ?v0 - floor)
	(served ?v0 - passenger)
	(destin ?v0 - passenger ?v1 - floor)
	(up ?v0 - floor)
	(above ?v0 - floor ?v1 - floor)
  )




	(:action do_down
		:parameters (?f1 - floor ?f2 - floor)
		:precondition (and (above ?f2 ?f1)
			(down ?f2)
			(lift-at ?f1))
		:effect (and
			(lift-at ?f2)
			(not (lift-at ?f1)))
	)


	(:action do_board
		:parameters (?f - floor ?p - passenger)
		:precondition (and (board ?f ?p)
			(lift-at ?f)
			(origin ?p ?f))
		:effect (and
			(boarded ?p))
	)


	(:action do_up
		:parameters (?f1 - floor ?f2 - floor)
		:precondition (and (above ?f1 ?f2)
			(lift-at ?f1)
			(up ?f2))
		:effect (and
			(lift-at ?f2)
			(not (lift-at ?f1)))
	)


	(:action do_depart
		:parameters (?f - floor ?p - passenger)
		:precondition (and (boarded ?p)
			(depart ?f ?p)
			(destin ?p ?f)
			(lift-at ?f))
		:effect (and
			(not (boarded ?p))
			(served ?p))
	)



  (:action macro0000
    :parameters (?f0 - floor ?f6 - floor ?p8 - passenger)
    :precondition (and (above ?f0 ?f6)
      (board ?f0 ?p8)
      (depart ?f6 ?p8)
      (destin ?p8 ?f6)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p8 ?f0)
      (up ?f6))
    :effect (and
      (served ?p8))
  )

  (:action macro0001
    :parameters (?f0 - floor ?f10 - floor ?p6 - passenger)
    :precondition (and (above ?f0 ?f10)
      (board ?f10 ?p6)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p6 ?f10)
      (up ?f10))
    :effect (and
      (boarded ?p6))
  )

  (:action macro0002
    :parameters (?f0 - floor ?f10 - floor ?f19 - floor ?p6 - passenger)
    :precondition (and (above ?f0 ?f10)
      (above ?f0 ?f19)
      (above ?f10 ?f19)
      (board ?f10 ?p6)
      (depart ?f19 ?p6)
      (destin ?p6 ?f19)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p6 ?f10)
      (up ?f10)
      (up ?f19))
    :effect (and
      (served ?p6))
  )

  (:action macro0003
    :parameters (?f0 - floor ?f12 - floor ?p9 - passenger)
    :precondition (and (above ?f0 ?f12)
      (board ?f12 ?p9)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p9 ?f12)
      (up ?f12))
    :effect (and
      (boarded ?p9))
  )

  (:action macro0004
    :parameters (?f0 - floor ?f12 - floor ?f16 - floor ?p9 - passenger)
    :precondition (and (above ?f0 ?f12)
      (above ?f0 ?f16)
      (above ?f12 ?f16)
      (board ?f12 ?p9)
      (depart ?f16 ?p9)
      (destin ?p9 ?f16)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p9 ?f12)
      (up ?f12)
      (up ?f16))
    :effect (and
      (served ?p9))
  )

  (:action macro0005
    :parameters (?f0 - floor ?f13 - floor ?p2 - passenger)
    :precondition (and (above ?f0 ?f13)
      (board ?f13 ?p2)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p2 ?f13)
      (up ?f13))
    :effect (and
      (boarded ?p2))
  )

  (:action macro0006
    :parameters (?f0 - floor ?f13 - floor ?f15 - floor ?p2 - passenger)
    :precondition (and (above ?f0 ?f13)
      (above ?f0 ?f15)
      (above ?f13 ?f15)
      (board ?f13 ?p2)
      (depart ?f15 ?p2)
      (destin ?p2 ?f15)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p2 ?f13)
      (up ?f13)
      (up ?f15))
    :effect (and
      (served ?p2))
  )

  (:action macro0007
    :parameters (?f0 - floor ?f17 - floor ?p1 - passenger)
    :precondition (and (above ?f0 ?f17)
      (board ?f17 ?p1)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p1 ?f17)
      (up ?f17))
    :effect (and
      (boarded ?p1))
  )

  (:action macro0008
    :parameters (?f0 - floor ?f15 - floor ?f17 - floor ?p1 - passenger)
    :precondition (and (above ?f0 ?f15)
      (above ?f0 ?f17)
      (above ?f15 ?f17)
      (board ?f17 ?p1)
      (depart ?f15 ?p1)
      (destin ?p1 ?f15)
      (down ?f0)
      (down ?f15)
      (lift-at ?f0)
      (origin ?p1 ?f17)
      (up ?f17))
    :effect (and
      (served ?p1))
  )

  (:action macro0009
    :parameters (?f0 - floor ?f2 - floor ?p5 - passenger)
    :precondition (and (above ?f0 ?f2)
      (board ?f2 ?p5)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p5 ?f2)
      (up ?f2))
    :effect (and
      (boarded ?p5))
  )

  (:action macro0010
    :parameters (?f0 - floor ?f2 - floor ?f7 - floor ?p5 - passenger)
    :precondition (and (above ?f0 ?f2)
      (above ?f0 ?f7)
      (above ?f2 ?f7)
      (board ?f2 ?p5)
      (depart ?f7 ?p5)
      (destin ?p5 ?f7)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p5 ?f2)
      (up ?f2)
      (up ?f7))
    :effect (and
      (served ?p5))
  )

  (:action macro0011
    :parameters (?f0 - floor ?f3 - floor ?p0 - passenger)
    :precondition (and (above ?f0 ?f3)
      (board ?f3 ?p0)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p0 ?f3)
      (up ?f3))
    :effect (and
      (boarded ?p0))
  )

  (:action macro0012
    :parameters (?f0 - floor ?f3 - floor ?f6 - floor ?p0 - passenger)
    :precondition (and (above ?f0 ?f3)
      (above ?f0 ?f6)
      (above ?f3 ?f6)
      (board ?f3 ?p0)
      (depart ?f6 ?p0)
      (destin ?p0 ?f6)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p0 ?f3)
      (up ?f3)
      (up ?f6))
    :effect (and
      (served ?p0))
  )

  (:action macro0013
    :parameters (?f0 - floor ?f3 - floor ?p7 - passenger)
    :precondition (and (above ?f0 ?f3)
      (board ?f3 ?p7)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p7 ?f3)
      (up ?f3))
    :effect (and
      (boarded ?p7))
  )

  (:action macro0014
    :parameters (?f0 - floor ?f3 - floor ?f6 - floor ?p7 - passenger)
    :precondition (and (above ?f0 ?f3)
      (above ?f0 ?f6)
      (above ?f3 ?f6)
      (board ?f3 ?p7)
      (depart ?f6 ?p7)
      (destin ?p7 ?f6)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p7 ?f3)
      (up ?f3)
      (up ?f6))
    :effect (and
      (served ?p7))
  )

  (:action macro0015
    :parameters (?f0 - floor ?f6 - floor ?p3 - passenger)
    :precondition (and (above ?f0 ?f6)
      (board ?f6 ?p3)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p3 ?f6)
      (up ?f6))
    :effect (and
      (boarded ?p3))
  )
)
