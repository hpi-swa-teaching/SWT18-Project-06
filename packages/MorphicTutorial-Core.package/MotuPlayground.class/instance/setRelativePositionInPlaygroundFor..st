as yet unclassified
setRelativePositionInPlaygroundFor: aMorph
	|position heightFactor widthFactor|
	
	heightFactor := Project currentWorld height /  self height.
	widthFactor := Project currentWorld width / self width.

	aMorph position: (self position) + ((aMorph position x / widthFactor)@(aMorph position y / heightFactor))