accessing
selectedLecture: anObject

	(anObject isKindOf: MotuLectureCategory) ifTrue: [^ self ].
	selectedLecture := anObject ifNil: [ NilLecture new ].

	self codeStatusBarContent: (self selectedLecture feedback);
		changed: #codeStatusBarColor;
		changed: #descriptionBoxContent.
	self codeEditor activeLecture: self selectedLecture.

	self changed: #selectedLecture