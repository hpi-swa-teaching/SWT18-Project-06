ui
firstLineOfCodeContent
	self selectedLecture simulateWorkspace 
	ifTrue: [ ^ '| ', (self selectedLecture parameterNames joinSeparatedBy: ' '), ' |' ] 
	ifFalse: [ ^ self selectedLecture methodName ]