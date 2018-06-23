as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| asserter form |
	asserter := MotuAssertion new.
	form := self perform: self lectureMethod selector.
	[asserter
		assert: form
		hasClass: Form
		errorMessage: 'You did not return a Form.'.
	asserter assertNotNil: form bits errorMessage: 'Your Form is empty.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]