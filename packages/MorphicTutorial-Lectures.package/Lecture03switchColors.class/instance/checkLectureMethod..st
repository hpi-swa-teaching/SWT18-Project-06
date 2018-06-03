as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|assertion|
	
	self markAsPassed.

	self color: Color blue.
	assertion := MotuAssertion reportTo: self.
	
	self switchColors.
	assertion assert: self color equals: Color red errMessage: 'Your method does not change the color of the morph from blue to red.'.
	self switchColors.
	assertion assert: self color equals: Color blue errMessage:  'Your method does not change the color of the morph from red to blue.'