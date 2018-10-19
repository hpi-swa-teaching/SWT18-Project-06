setup
setUp: aPlayground

	self morph: Morph new.
	aPlayground addMorph: self morph.
	self morph addFlexShellIfNecessary.
	self morph position: aPlayground position