building
testToggleSolution

	| startValue |
	startValue := browser showSolution.
	browser toggleSolution.
	self assert: (browser showSolution = startValue not)