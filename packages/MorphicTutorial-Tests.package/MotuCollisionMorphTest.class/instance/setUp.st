collisionMorph
setUp

	morph := MotuCollisionMorph newWith: Morph new.
	morph collider position: morph position.
	morph vector: 1@1.
	morph openInWorld