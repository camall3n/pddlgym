
(define (domain ferry)
  (:requirements :typing )
  (:types obj ferry)
  (:predicates (board ?v0 - obj)
	(not-eq ?v0 - obj ?v1 - obj)
	(car ?v0 - obj)
	(full-ferry ?v0 - ferry)
	(at-ferry ?v0 - obj)
	(empty-ferry ?v0 - ferry)
	(location ?v0 - obj)
	(on ?v0 - obj)
	(sail ?v0 - obj)
	(debark ?v0 - obj)
	(at ?v0 - obj ?v1 - obj)
  )




	(:action do_board
		:parameters (?car - obj ?loc - obj ?ferry - ferry)
		:precondition (and (at ?car ?loc)
			(at-ferry ?loc)
			(board ?car)
			(car ?car)
			(empty-ferry ?ferry)
			(location ?loc))
		:effect (and
			(on ?car)
			(not (at ?car ?loc))
			(not (empty-ferry ?ferry))
			(full-ferry ?ferry))
	)


	(:action do_sail
		:parameters (?from - obj ?to - obj)
		:precondition (and (at-ferry ?from)
			(location ?from)
			(location ?to)
			(not-eq ?from ?to)
			(sail ?to))
		:effect (and
			(at-ferry ?to)
			(not (at-ferry ?from)))
	)


	(:action do_debark
		:parameters (?car - obj ?loc - obj ?ferry - ferry)
		:precondition (and (at-ferry ?loc)
			(car ?car)
			(debark ?car)
			(full-ferry ?ferry)
			(location ?loc)
			(on ?car))
		:effect (and
			(at ?car ?loc)
			(empty-ferry ?ferry)
			(not (full-ferry ?ferry))
			(not (on ?car)))
	)



  (:action macro0000
    :parameters (?var0000 - obj ?var0001 - obj ?var0002 - obj ?var0003 - ferry ?var0004 - obj)
    :precondition (and (at ?var0002 ?var0001)
      (at-ferry ?var0000)
      (board ?var0002)
      (car ?var0002)
      (debark ?var0002)
      (empty-ferry ?var0003)
      (location ?var0000)
      (location ?var0001)
      (location ?var0004)
      (not-eq ?var0000 ?var0001)
      (not-eq ?var0001 ?var0004)
      (not-eq ?var0004 ?var0000)
      (sail ?var0000)
      (sail ?var0001)
      (sail ?var0004))
    :effect (and
      (not (at ?var0002 ?var0001))
      (at ?var0002 ?var0004))
  )

  (:action macro0001
    :parameters (?var0000 - obj ?var0001 - obj ?var0002 - obj ?var0003 - ferry)
    :precondition (and (at ?var0002 ?var0001)
      (at-ferry ?var0000)
      (board ?var0002)
      (car ?var0002)
      (debark ?var0002)
      (empty-ferry ?var0003)
      (location ?var0000)
      (location ?var0001)
      (not-eq ?var0000 ?var0001)
      (not-eq ?var0001 ?var0000)
      (sail ?var0000)
      (sail ?var0001))
    :effect (and
      (not (at ?var0002 ?var0001))
      (at ?var0002 ?var0000))
  )
)
