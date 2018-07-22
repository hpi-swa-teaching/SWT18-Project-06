evaluation
checkLectureMethod: aPlaygroundMorph 
	| morph |
	morph := self perform: self lectureMethod selector.
	[self asserter
		assert: morph
		hasClass: ImageMorph
		errorMessage: 'Your did not return an ImageMorph.'.
	self asserter
		assert: morph image
		notEquals: ImageMorph new image
		errorMessage: 'Your ImageMorph has no image in it'.
	morph openInWorld: aPlaygroundMorph.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]