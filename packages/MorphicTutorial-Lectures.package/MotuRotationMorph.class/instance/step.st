as yet unclassified
step

	self num: (self num +1).
	"self owner isFlexMorph ifFalse: [self addFlexShellIfNecessary]."
	self rotationDegrees: self num