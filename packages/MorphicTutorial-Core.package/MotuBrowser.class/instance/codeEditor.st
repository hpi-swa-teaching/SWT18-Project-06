accessing
codeEditor
	codeEditor ifNil: [self codeEditor: (window paneMorphs detect: [:m | m externalName = self codeEditorID])].
	^ codeEditor