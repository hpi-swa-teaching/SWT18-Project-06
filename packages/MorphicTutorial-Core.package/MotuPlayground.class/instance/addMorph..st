as yet unclassified
addMorph: aMorph
	"We copy the morph, so we can set the position and size realtive to the playground dimension, but still can evaluate the 	original Morph"
 	|morphCopy|
	
	morphCopy := aMorph copy
			beSticky;
			yourself.

	self setRelativePositionInPlaygroundFor: morphCopy.
	super addMorph: morphCopy