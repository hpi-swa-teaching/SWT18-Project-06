state
isSelectedLecturePassed
	^ self selectedLecture passed and: [self selectedLecture enableEvaluation]