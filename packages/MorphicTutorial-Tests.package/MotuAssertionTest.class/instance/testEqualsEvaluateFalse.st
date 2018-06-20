as yet unclassified
testEqualsEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
	
	[assertion assert: Color green equals: Color red errorMessage: errMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]