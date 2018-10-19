evaluation
checkLectureMethod: aPlayground

	|spy|
	self setUp: aPlayground.
	spy := MotuSpy spyOn: self morph.
	[self rotateMorphByAngle: spy.
	spy
		expect: #owner
		errorMessage: 'The given Morph already has a TransformationMorph as its owner.'.
	self asserter
		denyBlock: [self morph owner angle positive]
		errorMessage: 'We want our rotation to be clockwise'.
	self asserter
		deny: self morph owner angle rounded abs
		equals: 30
		errorMessage: 'TransformMorph>>angle: expects a value in radians.'.
	self asserter
		assert: self morph owner angle radiansToDegrees rounded
		equals: -30
		errorMessage: 'You didnt turn the morph by exactly 30 degrees.'.
	self pass] on: Error
	do: [:error | self failWith: error asString] 