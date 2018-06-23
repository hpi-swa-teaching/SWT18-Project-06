as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|assertion|
	
	self pass.

	self color: Color blue.
	assertion := MotuAssertion new.
	
	[
	self switchColors.
	assertion assert: self color equals: Color red errMessage: 'Your method does not change the color of the morph from blue to red.'.
	self switchColors.
	assertion assert: self color equals: Color blue errMessage: 'Your method does not change the color of the morph from red to blue.'.
	self pass] 
		on: Error do: [:e | self failWith: e asString]