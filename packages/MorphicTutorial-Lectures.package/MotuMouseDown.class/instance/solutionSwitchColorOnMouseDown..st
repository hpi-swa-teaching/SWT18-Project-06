solution
solutionSwitchColorOnMouseDown: aColorfulMorph
			
	aColorfulMorph
		on: #mouseDown
		send: #switchColors
		to: aColorfulMorph 