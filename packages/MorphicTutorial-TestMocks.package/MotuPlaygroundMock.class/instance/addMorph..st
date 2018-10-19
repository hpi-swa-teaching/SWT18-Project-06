mocked-methods
addMorph: aMorph

	Morph new addMorph: aMorph.
	self submorphs addLast: aMorph.