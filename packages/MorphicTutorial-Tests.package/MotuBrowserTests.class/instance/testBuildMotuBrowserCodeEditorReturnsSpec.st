building
testBuildMotuBrowserCodeEditorReturnsSpec

	| spec |
	spec := browser buildCodeEditorWith: toolbuilder.
	self assert: (spec isKindOf: PluggableCodePaneSpec)