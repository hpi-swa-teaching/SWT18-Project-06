as yet unclassified
<<<<<<< HEAD
addMorph: aMorph 
	(aMorph position x <= 0 and: [aMorph position y <= 0])
		ifTrue: [aMorph position: aMorph position + self visibleClearArea origin].
	super addMorph: aMorph.
=======
addMorph: aMorph
	"We copy the morph, so we can set the position and size realtive to the playground dimension, but still can evaluate the 	original Morph"
 	|morphCopy|
	
	morphCopy := aMorph copy
			beSticky;
			yourself.

	self setRelativePositionInPlaygroundFor: morphCopy.
	super addMorph: morphCopy
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
