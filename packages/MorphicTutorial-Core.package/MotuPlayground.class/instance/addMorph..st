as yet unclassified
addMorph: aMorph 
	
	"(aMorph position x <= 0 and: [aMorph position y <= 0])
		ifTrue: [aMorph position: aMorph position + self visibleClearArea origin].
	
	self setRelativePositionInPlaygroundFor: aMorph."
	super addMorph: aMorph