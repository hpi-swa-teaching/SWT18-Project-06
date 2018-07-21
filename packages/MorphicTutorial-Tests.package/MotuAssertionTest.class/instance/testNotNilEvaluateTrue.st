as yet unclassified
testNotNilEvaluateTrue

	[assertion assertNotNil: Color green errorMessage: errorMessage]
		on: Error do: [:e | self assert: false]