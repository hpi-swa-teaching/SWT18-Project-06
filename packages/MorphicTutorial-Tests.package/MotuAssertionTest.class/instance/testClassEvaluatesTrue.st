as yet unclassified
testClassEvaluatesTrue
	|errMessage|
	
	errMessage := 'errMessage'.
<<<<<<< HEAD
	[assertion assert: Color green hasClass: Color errorMessage: errMessage]
=======
	[assertion assert: Color green hasClass: Color errMessage: errMessage]
>>>>>>> b7c074b6d1255dc559dd7d3b21e2ac06b611eecb
		on: Error do: [:e | self assert: false]