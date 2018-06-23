as yet unclassified
checkCode: aString on: aPlaygroundMorph

<<<<<<< HEAD
	self lectureMethod methodClass compile: aString.
=======

	self class compile: aString.
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
	self failWith: 'Invalid code.'.
	self checkLectureMethod: aPlaygroundMorph