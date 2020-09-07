
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
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (board ?var0000 ?var0001)
      (depart ?var0002 ?var0001)
      (destin ?var0001 ?var0002)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (up ?var0002))
    :effect (and
      (served ?var0001))
  )

  (:action macro0001
    :parameters (?var0000 - floor ?var0001 - floor ?var0002 - passenger)
    :precondition (and (above ?var0000 ?var0001)
      (board ?var0001 ?var0002)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0002 ?var0001)
      (up ?var0001))
    :effect (and
      (boarded ?var0002))
  )

  (:action macro0002
    :parameters (?var0000 - floor ?var0001 - floor ?var0002 - passenger ?var0003 - floor)
    :precondition (and (above ?var0000 ?var0001)
      (above ?var0000 ?var0003)
      (above ?var0001 ?var0003)
      (board ?var0001 ?var0002)
      (depart ?var0003 ?var0002)
      (destin ?var0002 ?var0003)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0002 ?var0001)
      (up ?var0001)
      (up ?var0003))
    :effect (and
      (served ?var0002))
  )

  (:action macro0003
    :parameters (?var0000 - floor ?var0001 - floor ?var0002 - passenger ?var0003 - floor)
    :precondition (and (above ?var0000 ?var0001)
      (above ?var0000 ?var0003)
      (above ?var0003 ?var0001)
      (board ?var0001 ?var0002)
      (depart ?var0003 ?var0002)
      (destin ?var0002 ?var0003)
      (down ?var0000)
      (down ?var0003)
      (lift-at ?var0000)
      (origin ?var0002 ?var0001)
      (up ?var0001))
    :effect (and
      (served ?var0002))
  )

  (:action macro0004
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger ?var0004 - floor ?var0005 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0005)
      (above ?var0002 ?var0004)
      (above ?var0005 ?var0004)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0004 ?var0003)
      (depart ?var0005 ?var0001)
      (destin ?var0001 ?var0005)
      (destin ?var0003 ?var0004)
      (down ?var0000)
      (down ?var0005)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002)
      (up ?var0004))
    :effect (and
      (served ?var0001)
      (served ?var0003))
  )

  (:action macro0005
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger ?var0004 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0004)
      (above ?var0004 ?var0002)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0004 ?var0001)
      (destin ?var0001 ?var0004)
      (down ?var0000)
      (down ?var0004)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002))
    :effect (and
      (boarded ?var0003)
      (served ?var0001))
  )

  (:action macro0006
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger ?var0004 - floor ?var0005 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0005)
      (above ?var0004 ?var0002)
      (above ?var0004 ?var0005)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0004 ?var0001)
      (depart ?var0005 ?var0003)
      (destin ?var0001 ?var0004)
      (destin ?var0003 ?var0005)
      (down ?var0000)
      (down ?var0004)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002)
      (up ?var0005))
    :effect (and
      (served ?var0001)
      (served ?var0003))
  )

  (:action macro0007
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger ?var0004 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0004)
      (above ?var0002 ?var0004)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0004 ?var0001)
      (depart ?var0004 ?var0003)
      (destin ?var0001 ?var0004)
      (destin ?var0003 ?var0004)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002)
      (up ?var0004))
    :effect (and
      (served ?var0001)
      (served ?var0003))
  )

  (:action macro0008
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger ?var0004 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0004)
      (above ?var0002 ?var0004)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0004 ?var0001)
      (destin ?var0001 ?var0004)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002)
      (up ?var0004))
    :effect (and
      (boarded ?var0003)
      (served ?var0001))
  )

  (:action macro0009
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger)
    :precondition (and (above ?var0000 ?var0002)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0002 ?var0001)
      (destin ?var0001 ?var0002)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002))
    :effect (and
      (boarded ?var0003)
      (served ?var0001))
  )

  (:action macro0010
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger ?var0004 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0004)
      (above ?var0002 ?var0004)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0002 ?var0001)
      (depart ?var0004 ?var0003)
      (destin ?var0001 ?var0002)
      (destin ?var0003 ?var0004)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002)
      (up ?var0004))
    :effect (and
      (served ?var0001)
      (served ?var0003))
  )

  (:action macro0011
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (board ?var0000 ?var0001)
      (depart ?var0002 ?var0001)
      (destin ?var0001 ?var0002)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (up ?var0002))
    :effect (and
      (boarded ?var0001)
      (served ?var0001))
  )

  (:action macro0012
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - floor ?var0004 - passenger)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0003)
      (above ?var0003 ?var0002)
      (board ?var0000 ?var0001)
      (board ?var0003 ?var0004)
      (depart ?var0002 ?var0001)
      (destin ?var0001 ?var0002)
      (down ?var0000)
      (down ?var0003)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0004 ?var0003)
      (up ?var0002))
    :effect (and
      (boarded ?var0004)
      (served ?var0001))
  )

  (:action macro0013
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - floor ?var0004 - passenger)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0003)
      (above ?var0002 ?var0003)
      (board ?var0000 ?var0001)
      (board ?var0003 ?var0004)
      (depart ?var0002 ?var0001)
      (destin ?var0001 ?var0002)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0004 ?var0003)
      (up ?var0002)
      (up ?var0003))
    :effect (and
      (boarded ?var0004)
      (served ?var0001))
  )

  (:action macro0014
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - floor ?var0004 - passenger ?var0005 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0005)
      (above ?var0002 ?var0003)
      (above ?var0003 ?var0005)
      (board ?var0000 ?var0001)
      (board ?var0003 ?var0004)
      (depart ?var0002 ?var0001)
      (depart ?var0005 ?var0004)
      (destin ?var0001 ?var0002)
      (destin ?var0004 ?var0005)
      (down ?var0000)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0004 ?var0003)
      (up ?var0002)
      (up ?var0003)
      (up ?var0005))
    :effect (and
      (served ?var0001)
      (served ?var0004))
  )

  (:action macro0015
    :parameters (?var0000 - floor ?var0001 - passenger ?var0002 - floor ?var0003 - passenger ?var0004 - floor ?var0005 - floor)
    :precondition (and (above ?var0000 ?var0002)
      (above ?var0000 ?var0005)
      (above ?var0004 ?var0002)
      (above ?var0004 ?var0005)
      (board ?var0000 ?var0001)
      (board ?var0002 ?var0003)
      (depart ?var0004 ?var0003)
      (depart ?var0005 ?var0001)
      (destin ?var0001 ?var0005)
      (destin ?var0003 ?var0004)
      (down ?var0000)
      (down ?var0004)
      (lift-at ?var0000)
      (origin ?var0001 ?var0000)
      (origin ?var0003 ?var0002)
      (up ?var0002)
      (up ?var0005))
    :effect (and
      (served ?var0001)
      (served ?var0003))
  )
)
