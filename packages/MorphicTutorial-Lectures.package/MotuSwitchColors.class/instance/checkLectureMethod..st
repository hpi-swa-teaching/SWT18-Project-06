evaluation
checkLectureMethod: aPlaygroundMorph 
	self morph: (ColorfulMorph new color: Color blue; position: self morph position;
			 yourself).
	aPlaygroundMorph addMorph: self morph.
	[self morph switchColors.
	self asserter
		assert: self morph color
		equals: Color red
		errorMessage: 'Your method does not change the color of the morph from blue to red.'.
	self morph switchColors.
	self asserter
		assert: self morph color
		equals: Color blue
		errorMessage: 'Your method does not change the color of the morph from red to blue.'.
	self pass]
		on: Error
		do: [:error | self failWith: error asString]