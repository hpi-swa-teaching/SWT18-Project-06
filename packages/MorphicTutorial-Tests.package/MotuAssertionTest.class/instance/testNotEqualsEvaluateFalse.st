as yet unclassified
testNotEqualsEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
	
<<<<<<< HEAD
	[assertion assert: Color green notEquals: Color green errorMessage: errMessage.
=======
	[assertion assert: Color green notEquals: Color green errMessage: errMessage.
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]