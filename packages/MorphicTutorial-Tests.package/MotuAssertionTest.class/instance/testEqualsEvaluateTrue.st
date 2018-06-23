as yet unclassified
testEqualsEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
<<<<<<< HEAD
	[assertion assert: Color green equals: Color green errorMessage: errMessage]
=======
	[assertion assert: Color green equals: Color green errMessage: errMessage]
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
		on: Error do: [:e | self assert: false]