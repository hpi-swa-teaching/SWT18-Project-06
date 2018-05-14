building
testBuildMotuBrowserPlaygroundReturnsSpec

	| spec |
	spec := browser buildPlaygroundWith: toolbuilder.
	self assert: (spec isKindOf: PluggablePasteUpMorphSpec)