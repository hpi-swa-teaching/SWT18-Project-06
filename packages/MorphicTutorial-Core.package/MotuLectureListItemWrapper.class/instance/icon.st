as yet unclassified
icon
	|icon|
	self flag: #refactor ."item should be named lecture because it is a lecture"
	icon := self item passed
		ifTrue: [#testGreen]
		ifFalse: [#testRed].
	^ ToolIcons iconNamed: icon