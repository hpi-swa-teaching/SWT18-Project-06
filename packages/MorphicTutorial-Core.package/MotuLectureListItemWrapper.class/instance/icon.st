as yet unclassified
icon

	|icon|
	
	icon := self item passed
		ifTrue: [#testGreen]
		ifFalse: [#testRed].

	^ ToolIcons iconNamed: icon