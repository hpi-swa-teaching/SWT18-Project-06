as yet unclassified
checkCode: aString on: aPlaygroundMorph

	self failWith: 'Invalid code.'.
	(self safelyCompile: (self adaptCodeFromDisplay: aString))
		ifTrue: [self checkLectureMethod: aPlaygroundMorph]