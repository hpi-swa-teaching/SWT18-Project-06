as yet unclassified
switchColors
	self color = Color red
	ifTrue: [self color: Color green]
	ifFalse: [self color: Color red]