as yet unclassified
testClassEvaluatesTrue

	[assertion assert: Color green hasClass: Color errorMessage: errorMessage]
		on: Error do: [:e | self assert: false]