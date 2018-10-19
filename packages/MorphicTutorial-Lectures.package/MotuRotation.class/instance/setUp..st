setup
setUp: aPlaygroundMorph

	self morph: Morph new.
	aPlaygroundMorph addMorph: self morph.
	self morph position: aPlaygroundMorph position