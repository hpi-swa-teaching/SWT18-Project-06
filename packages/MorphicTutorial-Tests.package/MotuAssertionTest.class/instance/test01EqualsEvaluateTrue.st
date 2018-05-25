as yet unclassified
test01EqualsEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
	assertion assert: Color green equals: Color green errMessage: errMessage.
	Transcript showln: self failMessage.
	self assert: self failMessage isNil.