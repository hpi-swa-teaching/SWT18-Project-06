as yet unclassified
testNotNilEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
	[assertion assertNotNil: nil errMessage: errMessage.
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]