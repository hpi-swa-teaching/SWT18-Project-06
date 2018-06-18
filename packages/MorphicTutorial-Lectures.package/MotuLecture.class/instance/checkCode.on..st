as yet unclassified
checkCode: aString on: aPlaygroundMorph

	self lectureMethod methodClass compile: aString.
	self failWith: 'Invalid code.'.
	self checkLectureMethod: aPlaygroundMorph