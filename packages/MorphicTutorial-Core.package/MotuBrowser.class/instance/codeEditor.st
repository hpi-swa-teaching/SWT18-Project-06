accessing
codeEditor

	codeEditor ifNil: [self codeEditor: (MotuEditor new actionOnSave: [self evaluateCode])].
	^ codeEditor