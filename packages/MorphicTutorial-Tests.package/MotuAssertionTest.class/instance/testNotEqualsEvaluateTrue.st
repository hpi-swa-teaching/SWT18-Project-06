as yet unclassified
testNotEqualsEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
<<<<<<< HEAD
	[assertion assert: Color green notEquals: Color red errorMessage: errMessage]
=======
	[assertion assert: Color green notEquals: Color red errMessage: errMessage]
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
		on: Error do: [:e | self assert: false]