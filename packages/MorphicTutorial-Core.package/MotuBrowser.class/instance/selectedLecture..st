accessing
selectedLecture: anObject

	(anObject isKindOf: MotuLectureCategory) ifTrue: [^ self ].
	
	selectedLecture  ifNotNil: [selectedLecture removeDependent: self].
	selectedLecture := anObject ifNil: [ MotuNilLecture new ].
	selectedLecture addDependent: self.
	
	self playground clear.
	self showSolution: false.
	selectedLecture setUp: self playground.

	self codeEditor activeLecture: self selectedLecture.
	self update: selectedLecture