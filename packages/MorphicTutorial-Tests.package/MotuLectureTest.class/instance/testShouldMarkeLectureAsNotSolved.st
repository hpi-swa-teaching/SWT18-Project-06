as yet unclassified
testShouldMarkeLectureAsNotSolved
	|lecture string|
	
	string := 'ErrMessage'.
	lecture := MotuLecture new 
		setPassed;
		report: string.
	
	self assert: lecture passed not.
	self assert: lecture feedback = string.