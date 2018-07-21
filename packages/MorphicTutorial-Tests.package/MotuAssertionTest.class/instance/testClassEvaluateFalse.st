as yet unclassified
testClassEvaluateFalse

	[assertion assert: Color green hasClass: Morph errorMessage: errorMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errorMessage]