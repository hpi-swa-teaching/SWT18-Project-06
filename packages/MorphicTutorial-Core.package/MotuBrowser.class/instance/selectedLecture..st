accessing
selectedLecture: anObject

	(anObject isKindOf: MotuLectureCategory) ifTrue: [^ self ].
	selectedLecture := anObject ifNil: [ NilLecture new ].

	self codeStatusBarContent: (self selectedLecture feedback).
	self codeEditor activeLecture: self selectedLecture.

	self changed: #selectedLecture.
	self changed: #descriptionBoxContent.
	self changed: #isLectureSelected