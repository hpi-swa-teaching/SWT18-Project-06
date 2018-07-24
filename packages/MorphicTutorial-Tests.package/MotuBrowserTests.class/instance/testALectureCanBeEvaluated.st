as yet unclassified
testALectureCanBeEvaluated
	
	self assert: browser codeStatusBarContent size = 0.
	self deny: browser readyToEvaluateCode.
	browser selectedLecture: MotuCreateMorph instance.
	self assert: browser readyToEvaluateCode.
	browser evaluateCode.
	self assert: browser codeStatusBarContent size > 0