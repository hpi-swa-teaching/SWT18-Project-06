as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|assertion|
	
	self markAsPassed.

	self color: Color blue.
	assertion := MotuAssertion new.
	
	[
	self switchColors.
	assertion assert: self color equals: Color red errMessage: 'Your method does not change the color of the morph from blue to red.'.
	self switchColors.
	assertion assert: self color equals: Color blue errMessage: 'Your method does not change the color of the morph from red to blue.'.
	self markAsPassed] 
		on: Error do: [:e | self markAsFailedWithMessage: e asString]