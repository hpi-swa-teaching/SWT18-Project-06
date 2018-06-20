as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| assertion morph |
	assertion := MotuAssertion new.
	morph := self perform: self lectureMethod selector.
	[assertion
		assert: morph
		hasClass: ImageMorph
		errorMessage: 'Your did not return an ImageMorph.'.
	assertion
		assert: morph image
		notEquals: ImageMorph new image
		errorMessage: 'Your ImageMorph has no image in it'.
	morph openInWorld: aPlaygroundMorph.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]