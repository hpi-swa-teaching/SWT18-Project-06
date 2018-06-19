as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|assertion|

	self morph: (ColorfulMorph new color: Color blue; yourself).
	aPlaygroundMorph addMorph: self morph.
	assertion := MotuAssertion new.
	
	[self morph switchColors.
	assertion
		assert: self morph color
		equals: Color red
		errMessage: 'Your method does not change the color of the morph from blue to red.'.
	self morph switchColors.
	assertion
		assert: self morph color
		equals: Color blue
		errMessage: 'Your method does not change the color of the morph from red to blue.'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]