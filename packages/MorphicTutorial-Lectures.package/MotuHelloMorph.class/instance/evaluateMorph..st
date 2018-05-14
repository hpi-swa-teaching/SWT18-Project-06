as yet unclassified
evaluateMorph: aMorph

	((aMorph class == Morph) and: [aMorph color == Color green])
		ifTrue: [self feedback: 'Code is good.'. self setPassed] 
		ifFalse: [self feedback: 'Code is wrong'. self setFailed] 