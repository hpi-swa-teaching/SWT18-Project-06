as yet unclassified
setRelativePositionInPlaygroundFor: aMorph
	|x y|
	
	x := (aMorph position x) * (self width) / (self currentWorld width).
	y := (aMorph position y) * (self height) / (self currentWorld height).
	aMorph position: self playground position + (x@y)
