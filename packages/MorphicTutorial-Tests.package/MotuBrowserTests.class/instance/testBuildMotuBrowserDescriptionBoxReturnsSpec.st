building
testBuildMotuBrowserDescriptionBoxReturnsSpec
	| spec |
	
	spec := browser buildDescriptionBoxWith: toolbuilder.
	self assert: (spec isKindOf: PluggableTextSpec)