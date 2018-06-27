as yet unclassified
initialize

	super initialize.
	self frameFractions: (0@0 rect: 1@1).
	self setUpBackground.
	super addMorph: Project currentWorld