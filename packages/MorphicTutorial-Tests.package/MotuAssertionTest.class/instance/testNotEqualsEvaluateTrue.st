as yet unclassified
testNotEqualsEvaluateTrue

	[assertion assert: Color green notEquals: Color red errorMessage: errorMessage]
		on: Error do: [:e | self assert: false]