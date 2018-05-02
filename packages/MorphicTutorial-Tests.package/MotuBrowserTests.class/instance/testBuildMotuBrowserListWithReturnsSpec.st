as yet unclassified
testBuildMotuBrowserListWithReturnsSpec

	| spec |
	spec := browser buildLectureListWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)