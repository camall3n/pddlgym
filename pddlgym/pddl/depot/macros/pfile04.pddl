(define (domain Depot)
(:requirements :typing)
(:types place locatable - object
        depot distributor - place
        truck hoist surface - locatable
        pallet crate - surface)

(:predicates (at ?x - locatable ?y - place) 
             (on ?x - crate ?y - surface)
             (in ?x - crate ?y - truck)
             (lifting ?x - hoist ?y - crate)
             (available ?x - hoist)
             (clear ?x - surface))
    
(:action Drive
:parameters (?x - truck ?y - place ?z - place) 
:precondition (and (at ?x ?y))
:effect (and (not (at ?x ?y)) (at ?x ?z)))

(:action Lift
:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
:precondition (and (at ?x ?p) (available ?x) (at ?y ?p) (on ?y ?z) (clear ?y))
:effect (and (not (at ?y ?p)) (lifting ?x ?y) (not (clear ?y)) (not (available ?x)) 
             (clear ?z) (not (on ?y ?z))))

(:action Drop 
:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
:precondition (and (at ?x ?p) (at ?z ?p) (clear ?z) (lifting ?x ?y))
:effect (and (available ?x) (not (lifting ?x ?y)) (at ?y ?p) (not (clear ?z)) (clear ?y)
        (on ?y ?z)))

(:action Load
:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
:precondition (and (at ?x ?p) (at ?z ?p) (lifting ?x ?y))
:effect (and (not (lifting ?x ?y)) (in ?y ?z) (available ?x)))

(:action Unload 
:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
:precondition (and (at ?x ?p) (at ?z ?p) (available ?x) (in ?y ?z))
:effect (and (not (in ?y ?z)) (not (available ?x)) (lifting ?x ?y)))



  (:action macro0000
    :parameters (?var0000 - truck ?var0001 - place ?var0002 - place ?var0003 - truck ?var0004 - place)
    :precondition (and (at ?var0000 ?var0001)
      (at ?var0003 ?var0001))
    :effect (and
      (not (at ?var0000 ?var0001))
      (not (at ?var0003 ?var0001))
      (at ?var0000 ?var0002)
      (at ?var0003 ?var0004))
  )

  (:action macro0001
    :parameters (?var0000 - truck ?var0001 - place ?var0002 - place ?var0003 - truck)
    :precondition (and (at ?var0000 ?var0001)
      (at ?var0003 ?var0001))
    :effect (and
      (not (at ?var0000 ?var0001))
      (not (at ?var0003 ?var0001))
      (at ?var0000 ?var0002)
      (at ?var0003 ?var0002))
  )

  (:action macro0002
    :parameters (?var0000 - truck ?var0001 - place ?var0002 - place ?var0003 - hoist ?var0004 - crate ?var0005 - surface)
    :precondition (and (at ?var0000 ?var0001)
      (at ?var0003 ?var0002)
      (at ?var0004 ?var0002)
      (available ?var0003)
      (clear ?var0004)
      (on ?var0004 ?var0005))
    :effect (and
      (not (at ?var0004 ?var0002))
      (not (clear ?var0004))
      (not (on ?var0004 ?var0005))
      (clear ?var0005)
      (in ?var0004 ?var0000))
  )

  (:action macro0003
    :parameters (?var0000 - truck ?var0001 - place ?var0002 - place ?var0003 - hoist ?var0004 - crate ?var0005 - crate ?var0005 - surface ?var0006 - crate ?var0006 - surface ?var0007 - surface)
    :precondition (and (at ?var0000 ?var0001)
      (at ?var0003 ?var0002)
      (at ?var0004 ?var0002)
      (at ?var0005 ?var0002)
      (at ?var0005 ?var0002)
      (at ?var0006 ?var0002)
      (at ?var0007 ?var0002)
      (available ?var0003)
      (clear ?var0004)
      (clear ?var0005)
      (clear ?var0006)
      (on ?var0004 ?var0005)
      (on ?var0005 ?var0006)
      (on ?var0006 ?var0007))
    :effect (and
      (not (at ?var0006 ?var0002))
      (not (clear ?var0006))
      (not (on ?var0005 ?var0006))
      (not (on ?var0006 ?var0007))
      (clear ?var0006)
      (in ?var0006 ?var0000)
      (on ?var0005 ?var0007))
  )
)
