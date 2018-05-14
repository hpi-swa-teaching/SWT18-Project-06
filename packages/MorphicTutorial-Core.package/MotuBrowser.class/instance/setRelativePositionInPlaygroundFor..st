editor and playground
setRelativePositionInPlaygroundFor: aMorph
	|X Y|
	
	X := (aMorph position x) * (self playground width) / (self currentWorld width).
	Y := (aMorph position y) * (self playground height) / (self currentWorld height).
	aMorph position: self playground position + (X@Y)
