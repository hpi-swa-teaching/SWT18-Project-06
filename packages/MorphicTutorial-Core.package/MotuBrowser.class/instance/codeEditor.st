accessing
codeEditor
	codeEditor ifNil: [self codeEditor: MotuEditor new].
	^ codeEditor