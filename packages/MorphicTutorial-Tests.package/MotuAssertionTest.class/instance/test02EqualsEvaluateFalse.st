as yet unclassified
test02EqualsEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
	assertion assert: Color green equals: Color red errMessage: errMessage.
	Transcript showln: self failMessage.
	self assert: self failMessage = errMessage.