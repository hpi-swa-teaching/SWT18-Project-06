accessing
showSolution: aBoolean
	showSolution := aBoolean.
	self changed: #solutionButtonLabel;
		changed: #readyToEvaluateCode