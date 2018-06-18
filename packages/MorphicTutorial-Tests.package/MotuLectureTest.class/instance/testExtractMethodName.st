as yet unclassified
testExtractMethodName
	| lecture method |
	
	lecture := MotuLecture new.
	
	method := 'testMethodWith: parameter2  And: parameter2 For: parameter2
	
	"This is a comment"
	self assert: false.
	'.
	self assert: (lecture extractMethodName: method) = 'testMethodWith: parameter2  And: parameter2 For: parameter2'