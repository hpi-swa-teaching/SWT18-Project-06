as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|assertion colorful|
	
	self pass.

	colorful := ColorfulMorph new.
	colorful color: Color blue.
	assertion := MotuAssertion new.
	
	[
	colorful switchColors.
	assertion assert: colorful color equals: Color red errMessage: 'Your method does not change the color of the morph from blue to red.'.
	colorful switchColors.
	assertion assert: colorful color equals: Color blue errMessage: 'Your method does not change the color of the morph from red to blue.'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]