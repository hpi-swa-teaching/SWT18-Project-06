building
testBuildMotuBrowserPlaygroundReturnsSpec

	| spec |
	spec := browser buildPlaygroundPanelWith: toolbuilder.
	self assert: (spec isKindOf: PluggablePanelSpec)