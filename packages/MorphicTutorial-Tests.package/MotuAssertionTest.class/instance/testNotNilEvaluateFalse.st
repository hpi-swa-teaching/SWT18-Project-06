as yet unclassified
testNotNilEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
	[assertion assertNotNil: nil errorMessage: errMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]