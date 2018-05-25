as yet unclassified
testShouldShowError
	|lecture string|
	
	string := 'ErrMessage'.
	lecture := MotuLecture new 
		setPassed;
		report: string.
	
	self assert: lecture passed not.
	self assert: lecture feedback = string.