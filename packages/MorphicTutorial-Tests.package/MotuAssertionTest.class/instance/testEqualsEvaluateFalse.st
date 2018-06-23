as yet unclassified
testEqualsEvaluateFalse
	|errMessage|
	
	errMessage := 'errMessage'.
	
<<<<<<< HEAD
	[assertion assert: Color green equals: Color red errorMessage: errMessage.
=======
	[assertion assert: Color green equals: Color red errMessage: errMessage.
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
	self assert: false]
		on: Error do: [:e | self assert: e messageText = errMessage]