setup
setUp: aPlayground
	self staticMorph: Morph new.
	aPlayground addMorph: self staticMorph.
	self staticMorph position: aPlayground position.
	
	self morph: MotuCollisionMorph new.
	aPlayground addMorph: self morph.
	self morph position: aPlayground position.
	self morph collider: self staticMorph
	
	