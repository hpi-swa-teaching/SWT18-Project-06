building
testBuildMotuBrowserPlaygroundIsInserted

	| spec playground |
	spec := browser buildPlaygroundPanelWith: toolbuilder.
	playground :=spec model perform: (spec children).
	self assert: playground size = 1.
	self assert: (playground first isKindOf: MotuPlayground)