as yet unclassified
icon
	|icon|
	icon := self item isPassed
		ifTrue: [#testGreen]
		ifFalse: [#testRed].
	^ ToolIcons iconNamed: icon