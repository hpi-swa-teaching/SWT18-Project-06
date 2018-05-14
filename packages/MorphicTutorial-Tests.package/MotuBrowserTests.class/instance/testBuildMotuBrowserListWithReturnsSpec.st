building
testBuildMotuBrowserListWithReturnsSpec

	| spec |
	spec := browser buildLectureListWith: toolbuilder.
	self assert: (spec isKindOf: PluggableListSpec)