as yet unclassified
evaluateMorph: aMorph

	((aMorph class == Morph) and: [aMorph position = (150@350)])
		ifTrue: [self feedback: 'Code is good.'. self setPassed] 
		ifFalse: [self feedback: 'Code is wrong'. self setFailed] 