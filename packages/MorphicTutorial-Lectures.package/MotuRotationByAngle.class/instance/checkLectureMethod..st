evaluation
checkLectureMethod: aPlayground

	|spy|
	self setUp: aPlayground.
	spy := MotuSpy spyOn: self morph.
	[self rotateMorphByAngle: spy.
	spy expect: #owner
	errorMessage: 'Only the TransformationMorph can understand all rotation based messages.'.
	(self morph owner angle radiansToDegrees rounded = -30) ifFalse: [self error: 'You didnt turn the morph by exactly 30 degrees.'].
	self pass] on: Error
	do: [:error | self failWith: error asString] 