as yet unclassified
testEqualsEvaluateFalse

	[assertion assert: Color green equals: Color red errorMessage: errorMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errorMessage]