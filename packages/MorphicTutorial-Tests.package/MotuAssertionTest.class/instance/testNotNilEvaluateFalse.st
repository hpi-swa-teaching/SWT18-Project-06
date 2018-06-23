as yet unclassified
testNotNilEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
<<<<<<< HEAD
	[assertion assertNotNil: nil errorMessage: errMessage.
=======
	[assertion assertNotNil: nil errMessage: errMessage.
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]