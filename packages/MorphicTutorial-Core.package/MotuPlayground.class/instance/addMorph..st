as yet unclassified
addMorph: aMorph
	"We copy the morph, so we can set the position and size realtive to the playground dimension, but still can evaluate the 	original Morph"
 	|morphCopy|
	
	self clear.
	morphCopy := aMorph copy
			beSticky;
			yourself.

	self setRelativePositionInPlaygroundFor: aMorph.
	super addMorph: aMorph