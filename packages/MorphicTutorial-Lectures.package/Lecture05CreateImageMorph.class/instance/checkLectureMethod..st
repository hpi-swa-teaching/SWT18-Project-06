as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|assertion morph|
	
	self markAsPassed.
	assertion := MotuAssertion reportTo: self.
	
	morph := self perform: self lectureMethod.

	assertion assert: morph hasClass: ImageMorph errMessage: 'Your did not return an ImageMorph.'.
	assertion assert: [morph image] notEquals: (ImageMorph new image) errMessage: 'Your ImageMorph has no image in it'.
	morph openInWorld: aPlaygroundMorph
	
	
	