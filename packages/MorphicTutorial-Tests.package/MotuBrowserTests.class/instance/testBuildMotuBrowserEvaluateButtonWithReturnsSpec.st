building
testBuildMotuBrowserEvaluateButtonWithReturnsSpec

	| spec |
	spec := browser buildEvaluateButtonWith: toolbuilder.
	self assert: (spec isKindOf: PluggableButtonSpec)