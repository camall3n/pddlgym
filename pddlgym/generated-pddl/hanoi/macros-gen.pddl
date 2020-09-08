(define (domain hanoi)
  (:requirements :strips)
  (:predicates
  (clear ?x)
  (on ?x ?y)
  (smaller ?x ?y)
  )

  (:action move
    :parameters (?disc ?from ?to)
    :precondition (and (smaller ?to ?disc) (on ?disc ?from)
               (clear ?disc) (clear ?to))
    :effect  (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from))
          (not (clear ?to))))
  

  (:action macro0000
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0004 ?var0001))
    :effect (and
      (not (clear ?var0004))
      (not (on ?var0001 ?var0003))
      (clear ?var0003)
      (on ?var0001 ?var0004))
  )

  (:action macro0001
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004 ?var0005 ?var0006)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (on ?var0002 ?var0005)
      (on ?var0005 ?var0006)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0002 ?var0001)
      (smaller ?var0003 ?var0001)
      (smaller ?var0003 ?var0002)
      (smaller ?var0004 ?var0001)
      (smaller ?var0004 ?var0005)
      (smaller ?var0005 ?var0000)
      (smaller ?var0005 ?var0002)
      (smaller ?var0006 ?var0001))
    :effect (and
      (not (clear ?var0004))
      (not (on ?var0005 ?var0006))
      (clear ?var0006)
      (on ?var0005 ?var0004))
  )

  (:action macro0002
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004 ?var0005 ?var0006 ?var0007 ?var0008)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (on ?var0002 ?var0005)
      (on ?var0003 ?var0007)
      (on ?var0005 ?var0006)
      (on ?var0007 ?var0008)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0002 ?var0001)
      (smaller ?var0003 ?var0000)
      (smaller ?var0003 ?var0001)
      (smaller ?var0003 ?var0002)
      (smaller ?var0003 ?var0005)
      (smaller ?var0004 ?var0001)
      (smaller ?var0004 ?var0005)
      (smaller ?var0004 ?var0007)
      (smaller ?var0005 ?var0000)
      (smaller ?var0005 ?var0002)
      (smaller ?var0006 ?var0001)
      (smaller ?var0006 ?var0003)
      (smaller ?var0006 ?var0005)
      (smaller ?var0007 ?var0000)
      (smaller ?var0007 ?var0002)
      (smaller ?var0007 ?var0003)
      (smaller ?var0008 ?var0001)
      (smaller ?var0008 ?var0005))
    :effect (and
      (not (clear ?var0004))
      (not (on ?var0007 ?var0008))
      (clear ?var0008)
      (on ?var0007 ?var0004))
  )

  (:action macro0003
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004 ?var0005 ?var0006 ?var0007 ?var0008 ?var0009 ?var0010)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (on ?var0002 ?var0005)
      (on ?var0003 ?var0007)
      (on ?var0005 ?var0006)
      (on ?var0006 ?var0009)
      (on ?var0007 ?var0008)
      (on ?var0009 ?var0010)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0002 ?var0001)
      (smaller ?var0003 ?var0000)
      (smaller ?var0003 ?var0001)
      (smaller ?var0003 ?var0002)
      (smaller ?var0003 ?var0005)
      (smaller ?var0004 ?var0001)
      (smaller ?var0004 ?var0005)
      (smaller ?var0004 ?var0007)
      (smaller ?var0004 ?var0009)
      (smaller ?var0005 ?var0000)
      (smaller ?var0005 ?var0002)
      (smaller ?var0006 ?var0000)
      (smaller ?var0006 ?var0001)
      (smaller ?var0006 ?var0002)
      (smaller ?var0006 ?var0003)
      (smaller ?var0006 ?var0005)
      (smaller ?var0006 ?var0007)
      (smaller ?var0007 ?var0000)
      (smaller ?var0007 ?var0002)
      (smaller ?var0007 ?var0003)
      (smaller ?var0008 ?var0001)
      (smaller ?var0008 ?var0005)
      (smaller ?var0008 ?var0006)
      (smaller ?var0008 ?var0007)
      (smaller ?var0009 ?var0000)
      (smaller ?var0009 ?var0002)
      (smaller ?var0009 ?var0003)
      (smaller ?var0009 ?var0006)
      (smaller ?var0010 ?var0001)
      (smaller ?var0010 ?var0005)
      (smaller ?var0010 ?var0007))
    :effect (and
      (not (clear ?var0004))
      (not (on ?var0009 ?var0010))
      (clear ?var0010)
      (on ?var0009 ?var0004))
  )

  (:action macro0004
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004 ?var0005 ?var0006 ?var0007 ?var0008 ?var0009 ?var0010 ?var0011)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (on ?var0002 ?var0005)
      (on ?var0003 ?var0007)
      (on ?var0005 ?var0006)
      (on ?var0006 ?var0009)
      (on ?var0007 ?var0008)
      (on ?var0009 ?var0010)
      (on ?var0010 ?var0011)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0002 ?var0001)
      (smaller ?var0003 ?var0000)
      (smaller ?var0003 ?var0001)
      (smaller ?var0003 ?var0002)
      (smaller ?var0003 ?var0005)
      (smaller ?var0004 ?var0001)
      (smaller ?var0004 ?var0005)
      (smaller ?var0004 ?var0007)
      (smaller ?var0004 ?var0009)
      (smaller ?var0005 ?var0000)
      (smaller ?var0005 ?var0002)
      (smaller ?var0006 ?var0000)
      (smaller ?var0006 ?var0001)
      (smaller ?var0006 ?var0002)
      (smaller ?var0006 ?var0003)
      (smaller ?var0006 ?var0005)
      (smaller ?var0006 ?var0007)
      (smaller ?var0007 ?var0000)
      (smaller ?var0007 ?var0002)
      (smaller ?var0007 ?var0003)
      (smaller ?var0008 ?var0000)
      (smaller ?var0008 ?var0001)
      (smaller ?var0008 ?var0002)
      (smaller ?var0008 ?var0003)
      (smaller ?var0008 ?var0005)
      (smaller ?var0008 ?var0006)
      (smaller ?var0008 ?var0010)
      (smaller ?var0009 ?var0000)
      (smaller ?var0009 ?var0002)
      (smaller ?var0009 ?var0003)
      (smaller ?var0009 ?var0006)
      (smaller ?var0010 ?var0001)
      (smaller ?var0010 ?var0005)
      (smaller ?var0010 ?var0007)
      (smaller ?var0010 ?var0009)
      (smaller ?var0011 ?var0000)
      (smaller ?var0011 ?var0001)
      (smaller ?var0011 ?var0002)
      (smaller ?var0011 ?var0003)
      (smaller ?var0011 ?var0005)
      (smaller ?var0011 ?var0006)
      (smaller ?var0011 ?var0007))
    :effect (and
      (not (on ?var0007 ?var0008))
      (not (on ?var0010 ?var0011))
      (on ?var0007 ?var0011)
      (on ?var0010 ?var0008))
  )

  (:action macro0005
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004 ?var0005 ?var0006 ?var0007)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (on ?var0003 ?var0005)
      (on ?var0004 ?var0006)
      (on ?var0006 ?var0007)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0002 ?var0003)
      (smaller ?var0003 ?var0000)
      (smaller ?var0003 ?var0001)
      (smaller ?var0003 ?var0004)
      (smaller ?var0004 ?var0001)
      (smaller ?var0005 ?var0001)
      (smaller ?var0005 ?var0006)
      (smaller ?var0006 ?var0000)
      (smaller ?var0006 ?var0004)
      (smaller ?var0007 ?var0001)
      (smaller ?var0007 ?var0003))
    :effect (and
      (not (on ?var0003 ?var0005))
      (not (on ?var0006 ?var0007))
      (on ?var0003 ?var0007)
      (on ?var0006 ?var0005))
  )

  (:action macro0006
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004 ?var0005)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (on ?var0003 ?var0005)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0002 ?var0003)
      (smaller ?var0003 ?var0001)
      (smaller ?var0004 ?var0001)
      (smaller ?var0005 ?var0000))
    :effect (and
      (not (clear ?var0002))
      (not (on ?var0003 ?var0005))
      (clear ?var0005)
      (on ?var0003 ?var0002))
  )

  (:action macro0007
    :parameters (?var0000 ?var0001 ?var0002 ?var0003 ?var0004 ?var0005 ?var0006 ?var0007 ?var0008)
    :precondition (and (clear ?var0000)
      (clear ?var0002)
      (clear ?var0004)
      (on ?var0000 ?var0001)
      (on ?var0001 ?var0003)
      (on ?var0003 ?var0005)
      (on ?var0004 ?var0006)
      (on ?var0005 ?var0008)
      (on ?var0006 ?var0007)
      (smaller ?var0001 ?var0000)
      (smaller ?var0002 ?var0000)
      (smaller ?var0002 ?var0003)
      (smaller ?var0003 ?var0001)
      (smaller ?var0003 ?var0006)
      (smaller ?var0004 ?var0001)
      (smaller ?var0005 ?var0000)
      (smaller ?var0005 ?var0003)
      (smaller ?var0005 ?var0004)
      (smaller ?var0006 ?var0000)
      (smaller ?var0006 ?var0004)
      (smaller ?var0007 ?var0001)
      (smaller ?var0007 ?var0005)
      (smaller ?var0008 ?var0001)
      (smaller ?var0008 ?var0006))
    :effect (and
      (not (on ?var0005 ?var0008))
      (not (on ?var0006 ?var0007))
      (on ?var0005 ?var0007)
      (on ?var0006 ?var0008))
  )
)
