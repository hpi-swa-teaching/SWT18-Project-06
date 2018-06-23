as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| asserter path |
	asserter := MotuAssertion new.
	path := self perform: self lectureMethod selector.
	[asserter
		assert: path
		hasClass: ByteString
		errorMessage: 'You did not return a String'.
	asserter
		assertBlock: [(FileDirectory uri: '')
				fileExists: path]
		errorMessage: 'There is no file at the directory you returned.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]