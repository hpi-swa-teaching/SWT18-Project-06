as yet unclassified
solution
	^ 'switchColorOnMouseDown: aColorfulMorph
			
		aColorfulMorph on: #mouseDown  send: #switchColors to: aColorfulMorph  ' 