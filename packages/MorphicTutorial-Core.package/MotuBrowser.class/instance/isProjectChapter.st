building
isProjectChapter

	^ self selectedLecture
		ifNil: [false]
		ifNotNil: [true]