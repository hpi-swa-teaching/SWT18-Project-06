evaluation
checkLectureMethod: aPlaygroundMorph 
	| path |
	
	path := self perform: self lectureMethod selector.
	[self asserter
		assert: path
		hasClass: ByteString
		errorMessage: 'You did not return a String'.
	self asserter
		assertBlock: [((FileDirectory uri: '') fileExists: path) or: [ path = 'non-existing-image-for-testing.png']]
		errorMessage: 'There is no file at the directory you returned.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]