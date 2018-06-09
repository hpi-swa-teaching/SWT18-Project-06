as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|assertion morph|
	
	assertion := MotuAssertion new.
	morph := self perform: self lectureMethod.

	[
	assertion assert: morph hasClass: ImageMorph errMessage: 'Your did not return an ImageMorph.'.
	assertion assert: (morph image) notEquals: (ImageMorph new image) errMessage: 'Your ImageMorph has no image in it'.
	morph openInWorld: aPlaygroundMorph.
	self markAsPassed] 
		on: Error do: [:e | self markAsFailedWithMessage: e asString]