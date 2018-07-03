as yet unclassified
initialize

	super initialize.
	self containerMorph: (Morph new width: 100; height: 100; color: Color white; yourself).
	self positionMorph: (MotuPositionMorph new width: 20; height: 20; color: Color red; yourself)