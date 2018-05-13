editor
openInPlayground: aMorph
	|morphCopy positionX positionY|
	
	"We copy the morph, so we can set the position and size realtive to the playground dimension, but still can evaluate the 	original Morph".
	morphCopy := aMorph copy.
	morphCopy beSticky.
	
	"Set correct position for the morph copy."
	morphCopy position: (0@0).
	positionX := ((aMorph position x) * (self playground width) / (self currentWorld width)).
	positionY := ((aMorph position y) * (self playground height) / (self currentWorld height)).
	morphCopy position: self playground position + (positionX@positionY).
	
	morphCopy openInWorld: self playground.
