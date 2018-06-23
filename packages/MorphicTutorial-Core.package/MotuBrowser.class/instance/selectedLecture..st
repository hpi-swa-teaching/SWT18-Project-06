accessing
selectedLecture: anObject

	(anObject isKindOf: MotuLectureCategory) ifTrue: [^ self ].
	
	selectedLecture  ifNotNil: [selectedLecture removeDependent: self].
	selectedLecture := anObject ifNil: [ MotuNilLecture new ].
	selectedLecture addDependent: self.
	
	self playground clear.
	selectedLecture setUp: self playground.

	self codeEditor activeLecture: self selectedLecture.

	self changed: #selectedLecture.
	self changed: #descriptionBoxContent.
	self changed: #isLectureSelected.
	self changed: #contextBarContent.
	self update: selectedLecture