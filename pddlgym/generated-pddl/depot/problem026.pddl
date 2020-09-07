
(define (problem depotprob6512_26) (:domain depot)
  (:objects
        crate0 - crate
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	depot0 - depot
	distributor0 - distributor
	distributor1 - distributor
	hoist0 - hoist
	hoist1 - hoist
	hoist2 - hoist
	pallet0 - pallet
	pallet1 - pallet
	pallet2 - pallet
	truck0 - truck
	truck1 - truck
  )
  (:init 
	(at crate1 depot0)
	(at crate3 distributor1)
	(at crate5 distributor1)
	(at crate6 distributor0)
	(at hoist0 depot0)
	(at hoist1 distributor0)
	(at hoist2 distributor1)
	(at pallet0 depot0)
	(at pallet1 distributor0)
	(at pallet2 distributor1)
	(at truck0 distributor0)
	(at truck1 distributor1)
	(available hoist1)
	(clear crate1)
	(clear crate3)
	(clear crate6)
	(in crate0 truck1)
	(in crate2 truck0)
	(lifting hoist0 crate4)
	(lifting hoist2 crate7)
	(on crate1 pallet0)
	(on crate3 crate5)
	(on crate5 pallet2)
	(on crate6 pallet1)
  )
  (:goal (and
	(on crate0 crate4)
	(on crate2 crate6)
	(on crate4 crate7)
	(on crate5 pallet2)
	(on crate6 pallet1)
	(on crate7 pallet0)))
)
