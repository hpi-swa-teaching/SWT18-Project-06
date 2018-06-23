accessing
selectedLecture: anObject

	(anObject isKindOf: MotuLectureCategory) ifTrue: [^ self ].
	
	selectedLecture  ifNotNil: [selectedLecture removeDependent: self].
<<<<<<< HEAD
	selectedLecture := anObject ifNil: [ MotuNilLecture new ].
	selectedLecture addDependent: self.
	
	self playground clear.
	selectedLecture setUp: self playground.
=======
	selectedLecture := anObject ifNil: [ NilLecture new ].
	selectedLecture addDependent: self.
	
	self playground clear.
	selectedLecture passed
		ifTrue: [selectedLecture checkLectureMethod: self playground].
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb

	self codeEditor activeLecture: self selectedLecture.

	self changed: #selectedLecture.
	self changed: #descriptionBoxContent.
<<<<<<< HEAD
	self changed: #isLectureSelected.
	self changed: #contextBarContent.
	self update: selectedLecture
=======
	self changed: #isLectureSelected
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
