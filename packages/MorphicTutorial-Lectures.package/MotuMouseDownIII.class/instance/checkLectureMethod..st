as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| assertion |
	self morph: (ColorfulMorph new color: Color blue; yourself).
	self morph handleMouseDown: nil.
	assertion := MotuAssertion new.
	[assertion
		assert: self morph color
		equals: Color red
		errorMessage: 'Click does not work on your morph..'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString].
	self setUp: aPlaygroundMorph.
