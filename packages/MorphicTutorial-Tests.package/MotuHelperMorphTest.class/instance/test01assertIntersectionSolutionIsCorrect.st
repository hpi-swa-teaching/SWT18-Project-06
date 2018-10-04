collisionMorph
test01assertIntersectionSolutionIsCorrect

	| collisionMorph |
	collisionMorph := MotuCollisionMorph newWith: Morph new.
	collisionMorph collider position: collisionMorph position.
	collisionMorph vector: 0@0.
	self assert: (collisionMorph solutionCollidesWith: collisionMorph collider)