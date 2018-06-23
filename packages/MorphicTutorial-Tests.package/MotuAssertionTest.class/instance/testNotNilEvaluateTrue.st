as yet unclassified
testNotNilEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
<<<<<<< HEAD
	[assertion assertNotNil: Color green errorMessage: errMessage]
=======
	[assertion assertNotNil: Color green errMessage: errMessage]
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
		on: Error do: [:e | self assert: false]