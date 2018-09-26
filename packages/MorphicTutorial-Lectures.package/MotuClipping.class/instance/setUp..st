setup
setUp: aPlaygroundMorph

	self staticMorph addMorph: self movingMorph.
	self staticMorph color: Color orange.
	aPlaygroundMorph addMorph: self staticMorph.
	self staticMorph position: aPlaygroundMorph position.
	self staticMorph extent: (self movingMorph extent + 30)
	