state
readyToEvaluateCode
	^ self selectedLecture enableEvaluation and: [self showSolution not]