as yet unclassified
testNotEqualsEvaluateFalse

	[assertion assert: Color green notEquals: Color green errorMessage: errorMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errorMessage]