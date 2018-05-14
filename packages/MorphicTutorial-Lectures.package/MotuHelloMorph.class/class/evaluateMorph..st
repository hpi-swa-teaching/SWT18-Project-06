as yet unclassified
evaluateMorph: aMorph

	((aMorph class == Morph) and: [aMorph color == Color green])
		ifTrue: [Transcript showln: 'Code is good.'. self setPassed] 
		ifFalse: [Transcript showln: 'Code is wrong'. self setFailed] 