as yet unclassified
testNotEqualsEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
	
	[assertion assert: Color green notEquals: Color green errMessage: errMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]