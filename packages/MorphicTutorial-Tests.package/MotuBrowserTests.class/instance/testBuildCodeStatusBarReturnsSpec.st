building
testBuildCodeStatusBarReturnsSpec
	| spec |
	
	spec := browser buildCodeStatusBarWith: toolbuilder.
	self assert: (spec isKindOf: PluggableTextSpec)