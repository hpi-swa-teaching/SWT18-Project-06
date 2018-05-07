as yet unclassified
evaluateMorph: aMorph

	((aMorph class == Morph) and: [aMorph color == Color green])
		ifTrue: [Transcript showln: 'Code is good.'] 
		ifFalse: [Transcript showln: 'Code is wrong'] 