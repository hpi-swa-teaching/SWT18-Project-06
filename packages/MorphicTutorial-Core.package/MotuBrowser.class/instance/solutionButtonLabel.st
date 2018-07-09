ids and labels
solutionButtonLabel
	self showSolution ifTrue: [ ^ 'Show my Code' ]
	ifFalse: [ ^ 'Show Solution' ]