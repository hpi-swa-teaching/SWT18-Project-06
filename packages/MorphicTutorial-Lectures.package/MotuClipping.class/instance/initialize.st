setup
initialize

	super initialize.
	self staticMorph: Morph new.
	self movingMorph: (MotuSpecialCollisionMorph newWith: self staticMorph).