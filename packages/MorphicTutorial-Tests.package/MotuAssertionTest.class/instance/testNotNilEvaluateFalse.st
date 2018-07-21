as yet unclassified
testNotNilEvaluateFalse

	[assertion assertNotNil: nil errorMessage: errorMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errorMessage]