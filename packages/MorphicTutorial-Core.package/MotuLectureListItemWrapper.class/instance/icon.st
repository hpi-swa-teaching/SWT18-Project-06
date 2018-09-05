accessing
icon

	^ ToolIcons iconNamed: (self item passed
		ifTrue: [#testGreen]
		ifFalse: [#testRed])
