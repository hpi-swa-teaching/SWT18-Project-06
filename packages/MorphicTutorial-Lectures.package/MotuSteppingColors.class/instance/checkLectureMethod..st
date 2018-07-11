as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| assertion |
	self setUp: aPlaygroundMorph.
	assertion := MotuAssertion new.
	[assertion
		assert: self morph stepTime
		equals: 1000
		errorMessage: 'You should set the stepTime to 1000'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]
