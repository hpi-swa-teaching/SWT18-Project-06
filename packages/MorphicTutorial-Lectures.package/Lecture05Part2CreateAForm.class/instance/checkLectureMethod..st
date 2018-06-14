as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|asserter form|
	
	asserter := MotuAssertion new.
	form := self perform: self lectureMethod.

	[
	asserter assert: form hasClass: Form errMessage: 'You did not return a Form.'.
	asserter assertNotNil: form bits errMessage: 'Your Form is empty.'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]