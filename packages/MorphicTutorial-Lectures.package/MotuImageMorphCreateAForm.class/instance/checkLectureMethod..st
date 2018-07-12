as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| form |
	form := self perform: self lectureMethod selector.
	[self asserter
		assert: form
		hasClass: Form
		errorMessage: 'You did not return a Form.'.
	self asserter
		assertNotNil: form bits
		 errorMessage: 'Your Form is empty.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]