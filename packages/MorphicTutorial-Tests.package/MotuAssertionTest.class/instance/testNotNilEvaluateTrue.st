as yet unclassified
testNotNilEvaluateTrue
	|errMessage|
	
	errMessage := 'errMessage'.
	[assertion assertNotNil: Color green errMessage: errMessage]
		on: Error do: [:e | self assert: false]