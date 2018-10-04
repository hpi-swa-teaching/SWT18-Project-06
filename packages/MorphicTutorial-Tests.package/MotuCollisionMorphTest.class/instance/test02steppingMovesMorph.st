collisionMorph
test02steppingMovesMorph

	| startingPosition |
	startingPosition := morph position.
	morph step.
	self deny: (morph position = startingPosition)