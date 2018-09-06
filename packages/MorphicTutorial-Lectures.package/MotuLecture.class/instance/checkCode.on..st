evaluation
checkCode: aString on: aPlaygroundMorph

	self lectureMethod methodClass compile: (self adaptCodeFromDisplay: aString).
	self failWith: 'Invalid code.'.
	self checkLectureMethod: aPlaygroundMorph