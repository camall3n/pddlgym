
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
    :parameters (?f0 - floor ?f10 - floor ?p3 - passenger)
    :precondition (and (above ?f0 ?f10)
      (board ?f10 ?p3)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p3 ?f10)
      (up ?f10))
    :effect (and
      (boarded ?p3))
  )

  (:action macro0001
    :parameters (?f0 - floor ?f10 - floor ?p3 - passenger)
    :precondition (and (above ?f0 ?f10)
      (board ?f10 ?p3)
      (depart ?f0 ?p3)
      (destin ?p3 ?f0)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p3 ?f10)
      (up ?f10))
    :effect (and
      (served ?p3))
  )

  (:action macro0002
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

  (:action macro0003
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

  (:action macro0004
    :parameters (?f0 - floor ?f5 - floor ?p2 - passenger)
    :precondition (and (above ?f0 ?f5)
      (board ?f5 ?p2)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p2 ?f5)
      (up ?f5))
    :effect (and
      (boarded ?p2))
  )

  (:action macro0005
    :parameters (?f0 - floor ?f5 - floor ?f7 - floor ?p2 - passenger)
    :precondition (and (above ?f0 ?f5)
      (above ?f0 ?f7)
      (above ?f5 ?f7)
      (board ?f5 ?p2)
      (depart ?f7 ?p2)
      (destin ?p2 ?f7)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p2 ?f5)
      (up ?f5)
      (up ?f7))
    :effect (and
      (served ?p2))
  )

  (:action macro0006
    :parameters (?f0 - floor ?f7 - floor ?p0 - passenger)
    :precondition (and (above ?f0 ?f7)
      (board ?f7 ?p0)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p0 ?f7)
      (up ?f7))
    :effect (and
      (boarded ?p0))
  )

  (:action macro0007
    :parameters (?f0 - floor ?f10 - floor ?f7 - floor ?p0 - passenger)
    :precondition (and (above ?f0 ?f10)
      (above ?f0 ?f7)
      (above ?f7 ?f10)
      (board ?f7 ?p0)
      (depart ?f10 ?p0)
      (destin ?p0 ?f10)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p0 ?f7)
      (up ?f10)
      (up ?f7))
    :effect (and
      (served ?p0))
  )

  (:action macro0008
    :parameters (?f0 - floor ?f9 - floor ?p1 - passenger)
    :precondition (and (above ?f0 ?f9)
      (board ?f9 ?p1)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p1 ?f9)
      (up ?f9))
    :effect (and
      (boarded ?p1))
  )

  (:action macro0009
    :parameters (?f0 - floor ?f7 - floor ?f9 - floor ?p1 - passenger)
    :precondition (and (above ?f0 ?f7)
      (above ?f0 ?f9)
      (above ?f7 ?f9)
      (board ?f9 ?p1)
      (depart ?f7 ?p1)
      (destin ?p1 ?f7)
      (down ?f0)
      (down ?f7)
      (lift-at ?f0)
      (origin ?p1 ?f9)
      (up ?f9))
    :effect (and
      (served ?p1))
  )

  (:action macro0010
    :parameters (?f0 - floor ?f9 - floor ?p4 - passenger)
    :precondition (and (above ?f0 ?f9)
      (board ?f9 ?p4)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p4 ?f9)
      (up ?f9))
    :effect (and
      (boarded ?p4))
  )

  (:action macro0011
    :parameters (?f0 - floor ?f1 - floor ?f9 - floor ?p4 - passenger)
    :precondition (and (above ?f0 ?f1)
      (above ?f0 ?f9)
      (above ?f1 ?f9)
      (board ?f9 ?p4)
      (depart ?f1 ?p4)
      (destin ?p4 ?f1)
      (down ?f0)
      (down ?f1)
      (lift-at ?f0)
      (origin ?p4 ?f9)
      (up ?f9))
    :effect (and
      (served ?p4))
  )

  (:action macro0012
    :parameters (?f0 - floor ?f10 - floor ?p3 - passenger)
    :precondition (and (above ?f0 ?f10)
      (board ?f10 ?p3)
      (depart ?f0 ?p3)
      (destin ?p3 ?f0)
      (down ?f0)
      (lift-at ?f0)
      (origin ?p3 ?f10)
      (up ?f10))
    :effect (and
      (boarded ?p3)
      (served ?p3))
  )

  (:action macro0013
    :parameters (?f0 - floor ?f10 - floor ?f2 - floor ?p3 - passenger ?p5 - passenger)
    :precondition (and (above ?f0 ?f10)
      (above ?f0 ?f2)
      (above ?f2 ?f10)
      (board ?f10 ?p3)
      (board ?f2 ?p5)
      (down ?f0)
      (down ?f2)
      (lift-at ?f0)
      (origin ?p3 ?f10)
      (origin ?p5 ?f2)
      (up ?f10))
    :effect (and
      (boarded ?p3)
      (boarded ?p5))
  )

  (:action macro0014
    :parameters (?f0 - floor ?f10 - floor ?f2 - floor ?p3 - passenger ?p5 - passenger)
    :precondition (and (above ?f0 ?f10)
      (above ?f0 ?f2)
      (above ?f2 ?f10)
      (board ?f10 ?p3)
      (board ?f2 ?p5)
      (depart ?f0 ?p3)
      (destin ?p3 ?f0)
      (down ?f0)
      (down ?f2)
      (lift-at ?f0)
      (origin ?p3 ?f10)
      (origin ?p5 ?f2)
      (up ?f10))
    :effect (and
      (boarded ?p5)
      (served ?p3))
  )

  (:action macro0015
    :parameters (?f0 - floor ?f10 - floor ?f5 - floor ?p2 - passenger ?p3 - passenger)
    :precondition (and (above ?f0 ?f10)
      (above ?f0 ?f5)
      (above ?f5 ?f10)
      (board ?f10 ?p3)
      (board ?f5 ?p2)
      (down ?f0)
      (down ?f5)
      (lift-at ?f0)
      (origin ?p2 ?f5)
      (origin ?p3 ?f10)
      (up ?f10))
    :effect (and
      (boarded ?p2)
      (boarded ?p3))
  )
)
