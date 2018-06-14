as yet unclassified
checkCode: aString on: aPlaygroundMorph


	self class compile: aString.
	self failWith: 'Invalid code.'.
	self checkLectureMethod: aPlaygroundMorph