ui
toggleSolution
	self showSolution: self showSolution not.
	self showSolution 
		ifTrue: [ self codeEditor showSolutionCode ] 
		ifFalse: [ self codeEditor showUserCode ]