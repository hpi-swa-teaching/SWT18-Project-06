setup
setUp: aPlayground

	aPlayground addMorph: self morph.
	self morph position: aPlayground position.
	self morph on: #mouseDown send: #switchColors to: self morph