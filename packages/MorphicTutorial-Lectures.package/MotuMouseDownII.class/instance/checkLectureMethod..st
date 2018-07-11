as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| assertion |
	self morph: ColorfulMorph new.
	self setUp: aPlaygroundMorph.
	assertion := MotuAssertion new.
	[assertion
		assert: (self morph handlesMouseDown: nil)
		equals: true
		errorMessage: 'Your did not implement handlesMouseDown: correct.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]
