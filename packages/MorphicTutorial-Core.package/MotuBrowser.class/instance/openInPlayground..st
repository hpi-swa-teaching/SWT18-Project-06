editor and playground
openInPlayground: aMorph
	|morphCopy|
	
	"We copy the morph, so we can set the position and size realtive to the playground dimension, but still can evaluate the 	original Morph".
	morphCopy := aMorph copy.
	
	"Set correct position for the morph copy."
	self setRelativePositionInPlaygroundFor: morphCopy.
	
	morphCopy openInWorld: self playground.
