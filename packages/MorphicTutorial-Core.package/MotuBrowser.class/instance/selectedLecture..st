accessing
selectedLecture: anObject

	(anObject isKindOf: MotuLectureCategory) ifTrue: [^ self ].
	selectedLecture := anObject ifNil: [ NilLecture new ].

<<<<<<< HEAD
	self codeStatusBarContent: (self selectedLecture feedback).
	self codeEditor activeLecture: self selectedLecture.

	self changed: #selectedLecture.
	self changed: #descriptionBoxContent
=======
	self codeStatusBarContent: (self selectedLecture feedback);
		changed: #codeStatusBarColor;
		changed: #descriptionBoxContent.
	self codeEditor activeLecture: self selectedLecture.

	self changed: #selectedLecture
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
